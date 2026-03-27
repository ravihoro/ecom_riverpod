import 'dart:async';
import 'package:dio/dio.dart';
import 'package:ecom_riverpod/features/auth/presentation/controller/auth_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ecom_riverpod/core/constants/api_endpoints.dart';
import 'package:ecom_riverpod/features/auth/providers/auth_providers.dart';

/// ===========================================================================
/// 🔐 AUTH INTERCEPTOR
/// ===========================================================================
class AuthInterceptors extends Interceptor {
  final Ref ref;
  final Dio dio;
  late final Dio _refreshDio;

  AuthInterceptors(this.ref, this.dio) {
    _refreshDio = Dio(
      BaseOptions(
        baseUrl: ApiEndpoints.baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );
  }

  bool _isRefreshing = false;
  final List<_PendingRequest> _queue = [];

  /// 🔹 Attach token
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await ref.read(authLocalDataSourceProvider).getAccessToken();

    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    handler.next(options);
  }

  /// 🔹 Handle errors
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final requestOptions = err.requestOptions;

    // Skip refresh endpoint
    if (requestOptions.path.contains(ApiEndpoints.refresh)) {
      return handler.next(err);
    }

    // Only handle 401
    if (err.response?.statusCode != 401) {
      return handler.next(err);
    }

    // Prevent infinite retry loop
    if (requestOptions.extra['retry'] == true) {
      return handler.next(err);
    }
    requestOptions.extra['retry'] = true;

    /// 🔁 If already refreshing → queue
    if (_isRefreshing) {
      final completer = Completer<Response>();
      _queue.add(_PendingRequest(requestOptions, completer));

      try {
        final response = await completer.future;
        return handler.resolve(response);
      } catch (e) {
        return handler.reject(
          DioException(requestOptions: requestOptions, error: e),
        );
      }
    }

    /// 🚀 Start refresh (Leader)
    _isRefreshing = true;

    try {
      final newToken = await _refreshToken();

      if (newToken == null) {
        throw DioException(
          requestOptions: requestOptions,
          message: "Refresh token failed",
        );
      }

      /// Retry original request
      final response = await _retry(requestOptions, newToken);

      /// Retry queued requests (parallel)
      if (_queue.isNotEmpty) {
        await Future.wait(
          _queue.map((pending) async {
            try {
              final res = await _retry(pending.requestOptions, newToken);
              pending.completer.complete(res);
            } catch (e) {
              pending.completer.completeError(e);
            }
          }),
        );
      }

      _queue.clear();
      return handler.resolve(response);
    } catch (e) {
      /// Fail all queued requests
      for (final pending in _queue) {
        pending.completer.completeError(e);
      }
      _queue.clear();

      /// Logout user
      await ref.read(authControllerProvider.notifier).signOut();

      return handler.reject(err);
    } finally {
      _isRefreshing = false;
    }
  }

  /// 🔄 Refresh token
  Future<String?> _refreshToken() async {
    final localDataSource = ref.read(authLocalDataSourceProvider);
    final refreshToken = await localDataSource.getRefreshToken();

    if (refreshToken == null) return null;

    final response = await _refreshDio.post(
      ApiEndpoints.refresh,
      data: {'refreshToken': refreshToken},
    );

    final newAccessToken = response.data['accessToken'];
    final newRefreshToken = response.data['refreshToken'] ?? refreshToken;

    await localDataSource.saveTokens(
      accessToken: newAccessToken,
      refreshToken: newRefreshToken,
    );

    return newAccessToken;
  }

  /// 🔁 Retry request safely (NO mutation)
  Future<Response> _retry(RequestOptions options, String token) async {
    final newOptions = options.copyWith(
      headers: {...options.headers, 'Authorization': 'Bearer $token'},
    );

    return dio.fetch(newOptions);
  }
}

/// ===========================================================================
/// 📦 Pending Request Model
/// ===========================================================================
class _PendingRequest {
  final RequestOptions requestOptions;
  final Completer<Response> completer;

  _PendingRequest(this.requestOptions, this.completer);
}

/// ===========================================================================
/// 🌐 Dio Provider
/// ===========================================================================
final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: ApiEndpoints.baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  dio.interceptors.add(AuthInterceptors(ref, dio));

  return dio;
});

import 'package:dio/dio.dart';
import 'package:ecom_riverpod/core/constants/api_endpoints.dart';
import 'package:ecom_riverpod/features/auth/providers/auth_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: ApiEndpoints.baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  final localDataSource = ref.read(authLocalDataSourceProvider);

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        final token = await localDataSource.getAccessToken();

        if (token != null) {
          print('token: $token');
          options.headers['Authorization'] = 'Bearer $token';
        }

        handler.next(options);
      },
    ),
  );

  return dio;
});

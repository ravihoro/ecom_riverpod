import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:ecom_riverpod/core/constants/api_endpoints.dart';
import 'package:ecom_riverpod/core/network/auth_interceptors.dart';
import 'package:ecom_riverpod/core/network/cache_store_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: ApiEndpoints.baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  dio.interceptors.add(AuthInterceptors(ref, dio));

  final cacheStoreAsync = ref.watch(cacheStoreProvider);

  final store = cacheStoreAsync.value;

  if (store != null) {
    dio.interceptors.add(
      DioCacheInterceptor(
        options: CacheOptions(
          store: store,
          policy: CachePolicy.noCache,
          hitCacheOnErrorExcept: [401, 403],
          maxStale: const Duration(days: 7),
        ),
      ),
    );
  }

  return dio;
});

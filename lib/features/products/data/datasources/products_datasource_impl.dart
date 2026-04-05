import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:ecom_riverpod/core/constants/api_endpoints.dart';
import 'package:ecom_riverpod/core/error/exceptions.dart';
import 'package:ecom_riverpod/features/products/data/datasources/products_datasource.dart';
import 'package:ecom_riverpod/features/products/data/models/products_response_model.dart';

class ProductsDatasourceImpl implements ProductsDatasource {
  final Dio _dio;

  ProductsDatasourceImpl(this._dio);

  @override
  Future<ProductsResponseModel> getProducts({
    required String category,
    int limit = 6,
    int skip = 0,
    bool useCache = false,
  }) async {
    try {
      final policy = useCache ? CachePolicy.forceCache : CachePolicy.noCache;

      final response = await _dio.get(
        ApiEndpoints.productsByCategory(category),
        queryParameters: {'limit': limit, 'skip': skip},
        options: Options(extra: {'cache_policy': policy}),
      );

      final data = ProductsResponseModel.fromJson(response.data);

      return data;
    } on DioException catch (e) {
      if (useCache) {
        return getProducts(
          category: category,
          limit: limit,
          skip: skip,
          useCache: false,
        );
      }

      final statusCode = e.response?.statusCode;

      if (statusCode != null && statusCode >= 500) {
        throw ServerException('Server Error');
      } else {
        throw NetworkException('Network Issue');
      }
    }
  }

  @override
  Future<ProductModel> getProductById(int id) async {
    try {
      final response = await _dio.get(ApiEndpoints.productById(id));

      final data = ProductModel.fromJson(response.data);

      return data;
    } on DioException catch (e) {
      final statusCode = e.response?.statusCode;

      if (statusCode != null && statusCode >= 500) {
        throw ServerException('Server Error');
      } else {
        throw NetworkException('Network Issue');
      }
    }
  }
}

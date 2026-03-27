import 'package:dio/dio.dart';
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
  }) async {
    try {
      final response = await _dio.get(
        ApiEndpoints.productsByCategory(category),
        queryParameters: {'limit': limit, 'skip': skip},
      );

      final data = ProductsResponseModel.fromJson(response.data);

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

import 'package:dio/dio.dart';
import 'package:ecom_riverpod/core/constants/api_endpoints.dart';
import 'package:ecom_riverpod/core/error/exceptions.dart';
import 'package:ecom_riverpod/features/products/data/models/products_response_model.dart';
import 'package:ecom_riverpod/features/search/data/datasources/search_data_source.dart';

class SearchRemoteDataSource implements SearchDataSource {
  final Dio _dio;

  const SearchRemoteDataSource(this._dio);

  @override
  Future<ProductsResponseModel> searchProduct(String query) async {
    try {
      final response = await _dio.get(
        ApiEndpoints.search,
        queryParameters: {'q': query},
      );

      return ProductsResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      final statusCode = e.response?.statusCode;

      if (statusCode != null && statusCode >= 500) {
        throw ServerException('Server Issue');
      } else {
        throw NetworkException('Network Exception: ${e.message}');
      }
    }
  }
}

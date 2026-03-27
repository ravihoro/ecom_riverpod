import 'package:dio/dio.dart';
import 'package:ecom_riverpod/core/constants/api_endpoints.dart';
import 'package:ecom_riverpod/core/error/exceptions.dart';
import 'package:ecom_riverpod/features/category/data/datasources/categories_data_source.dart';
import 'package:ecom_riverpod/features/category/data/model/category_model.dart';

class CategoriesDataSourceImpl implements CategoriesDataSource {
  final Dio _dio;

  const CategoriesDataSourceImpl(this._dio);

  @override
  Future<List<CategoryModel>> getCategories() async {
    try {
      final response = await _dio.get(ApiEndpoints.categories);

      final List<dynamic> data = response.data;

      return data.map((json) => CategoryModel.fromJson(json)).toList();
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

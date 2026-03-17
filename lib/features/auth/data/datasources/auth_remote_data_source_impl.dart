import 'package:dio/dio.dart';
import 'package:ecom_riverpod/core/constants/api_endpoints.dart';
import 'package:ecom_riverpod/core/error/exceptions.dart';
import 'package:ecom_riverpod/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:ecom_riverpod/features/auth/data/models/auth_response_model.dart';

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final Dio _dio;

  AuthRemoteDataSourceImpl(this._dio);

  @override
  Future<AuthResponseModel> login(String username, String password) async {
    try {
      final response = await _dio.post(
        ApiEndpoints.login,
        data: {'username': username, 'password': password},
      );

      return AuthResponseModel.fromJson(response.data);
    } on DioException catch (e) {
      final statusCode = e.response?.statusCode;

      if (statusCode == 400) {
        throw AuthException('Invalid Credentials');
      } else if (statusCode != null && statusCode >= 500) {
        throw ServerException('Server Issue');
      } else {
        throw NetworkException('Network Exception: ${e.message}');
      }
    }
  }
}

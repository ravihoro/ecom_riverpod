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
    final response = await _dio.post(
      ApiEndpoints.login,
      data: {'username': username, 'password': password},
    );

    final statusCode = response.statusCode;

    if (statusCode == 200) {
      return AuthResponseModel.fromJson(response.data);
    } else if (statusCode == 401) {
      throw AuthException('Authentication Failed');
    } else if (statusCode != null && statusCode >= 500) {
      throw ServerException('Server Issue');
    } else {
      throw NetworkException('Network Exception');
    }
  }
}

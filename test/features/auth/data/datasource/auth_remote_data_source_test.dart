import 'package:dio/dio.dart';
import 'package:ecom_riverpod/core/constants/api_endpoints.dart';
import 'package:ecom_riverpod/core/error/exceptions.dart';
import 'package:ecom_riverpod/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:ecom_riverpod/features/auth/data/datasources/auth_remote_data_source_impl.dart';
import 'package:ecom_riverpod/features/auth/data/models/auth_response_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mock_data.dart';

class MockDio extends Mock implements Dio {}

void main() {
  const username = 'username';
  const password = 'password';

  late AuthRemoteDataSource dataSource;

  late MockDio dio;

  setUp(() {
    dio = MockDio();
    dataSource = AuthRemoteDataSourceImpl(dio);
  });

  group('should test login', () {
    test('should return auth response on successful login', () async {
      when(
        () => dio.post(ApiEndpoints.login, data: any(named: 'data')),
      ).thenAnswer(
        (_) async => Response(
          data: mockLoginData,
          statusCode: 200,
          requestOptions: RequestOptions(path: ApiEndpoints.login),
        ),
      );

      final response = await dataSource.login(username, password);

      verify(
        () => dio.post(
          ApiEndpoints.login,
          data: {'username': username, 'password': password},
        ),
      ).called(1);

      expect(response, AuthResponseModel.fromJson(mockLoginData));
    });

    test('should throw auth exception', () async {
      when(
        () => dio.post(ApiEndpoints.login, data: any(named: 'data')),
      ).thenThrow(
        DioException(
          requestOptions: RequestOptions(path: ApiEndpoints.login),
          response: Response(
            statusCode: 401,
            requestOptions: RequestOptions(path: ApiEndpoints.login),
          ),
          type: DioExceptionType.badResponse,
        ),
      );

      final call = dataSource.login;

      expect(() => call(username, password), throwsA(isA<AuthException>()));
    });
    test('should throw server exception', () async {
      when(
        () => dio.post(ApiEndpoints.login, data: any(named: 'data')),
      ).thenThrow(
        DioException(
          requestOptions: RequestOptions(path: ApiEndpoints.login),
          response: Response(
            statusCode: 500,
            requestOptions: RequestOptions(path: ApiEndpoints.login),
          ),
          type: DioExceptionType.badResponse,
        ),
      );

      final call = dataSource.login;

      expect(() => call(username, password), throwsA(isA<ServerException>()));
    });

    test('should throw network exception', () async {
      when(
        () => dio.post(ApiEndpoints.login, data: any(named: 'data')),
      ).thenThrow(
        DioException(
          requestOptions: RequestOptions(path: ApiEndpoints.login),
          response: Response(
            statusCode: 404,
            requestOptions: RequestOptions(path: ApiEndpoints.login),
          ),
          type: DioExceptionType.badResponse,
        ),
      );

      final call = dataSource.login;

      expect(() => call(username, password), throwsA(isA<NetworkException>()));
    });
  });

  group('should test get user api', () {
    test('should fetch current user', () async {
      when(() => dio.get(ApiEndpoints.me)).thenAnswer(
        (_) async => Response(
          data: mockLoginData,
          statusCode: 200,
          requestOptions: RequestOptions(path: ApiEndpoints.login),
        ),
      );

      final response = await dataSource.getUser();

      verify(() => dio.post(ApiEndpoints.me)).called(1);

      expect(response, AuthResponseModel.fromJson(mockLoginData));
    });

    test('should throw auth exception for invalid/expired token', () async {
      when(() => dio.get(ApiEndpoints.me)).thenThrow(
        DioException(
          requestOptions: RequestOptions(path: ApiEndpoints.me),
          response: Response(
            statusCode: 401,
            requestOptions: RequestOptions(path: ApiEndpoints.me),
          ),
          type: DioExceptionType.badResponse,
        ),
      );

      final call = dataSource.getUser;

      expect(() => call(), throwsA(isA<AuthException>()));
    });

    test('should throw server exception', () async {
      when(() => dio.get(ApiEndpoints.me)).thenThrow(
        DioException(
          requestOptions: RequestOptions(path: ApiEndpoints.me),
          response: Response(
            statusCode: 500,
            requestOptions: RequestOptions(path: ApiEndpoints.me),
          ),
          type: DioExceptionType.badResponse,
        ),
      );

      final call = dataSource.getUser;

      expect(() => call(), throwsA(isA<ServerException>()));
    });
  });
}

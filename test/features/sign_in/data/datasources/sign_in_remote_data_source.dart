// import 'package:dio/dio.dart';
// import 'package:ecom_riverpod/core/constants/api_endpoints.dart';
// import 'package:ecom_riverpod/core/error/exceptions.dart';
// import 'package:ecom_riverpod/features/sign_in/data/datasources/sign_in_remote_data_source.dart';
// import 'package:ecom_riverpod/features/auth/data/models/auth_response_model.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';

// import '../../../../mock_data.dart';

// class MockDio extends Mock implements Dio {}

// void main() {
//   const username = 'username';
//   const password = 'password';

//   late SignInRemoteDataSource dataSource;

//   late MockDio dio;

//   setUp(() {
//     dio = MockDio();
//     dataSource = SignInRemoteDataSource(dio);
//   });

//   test('should return auth response on successful login', () async {
//     when(
//       () => dio.post(ApiEndpoints.login, data: any(named: 'data')),
//     ).thenAnswer(
//       (_) async => Response(
//         data: mockLoginData,
//         statusCode: 200,
//         requestOptions: RequestOptions(path: ApiEndpoints.login),
//       ),
//     );

//     final response = await dataSource.login(username, password);

//     verify(
//       () => dio.post(
//         ApiEndpoints.login,
//         data: {'username': username, 'password': password},
//       ),
//     ).called(1);

//     expect(response, AuthResponseModel.fromJson(mockLoginData));
//   });

//   test('should throw auth exception', () async {
//     when(
//       () => dio.post(ApiEndpoints.login, data: any(named: 'data')),
//     ).thenAnswer(
//       (_) async => Response(
//         statusCode: 401,
//         requestOptions: RequestOptions(path: ApiEndpoints.login),
//       ),
//     );

//     final call = dataSource.login;

//     expect(() => call(username, password), throwsA(isA<AuthException>()));
//   });
//   test('should throw server exception', () async {
//     when(
//       () => dio.post(ApiEndpoints.login, data: any(named: 'data')),
//     ).thenAnswer(
//       (_) async => Response(
//         statusCode: 500,
//         requestOptions: RequestOptions(path: ApiEndpoints.login),
//       ),
//     );

//     final call = dataSource.login;

//     expect(() => call(username, password), throwsA(isA<ServerException>()));
//   });

//   test('should throw network exception', () async {
//     when(
//       () => dio.post(ApiEndpoints.login, data: any(named: 'data')),
//     ).thenAnswer(
//       (_) async => Response(
//         statusCode: 404,
//         requestOptions: RequestOptions(path: ApiEndpoints.login),
//       ),
//     );

//     final call = dataSource.login;

//     expect(() => call(username, password), throwsA(isA<NetworkException>()));
//   });
// }

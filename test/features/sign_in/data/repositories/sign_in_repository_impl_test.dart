// import 'package:dartz/dartz.dart';
// import 'package:ecom_riverpod/core/domain/entities/auth_session.dart';
// import 'package:ecom_riverpod/core/error/exceptions.dart';
// import 'package:ecom_riverpod/core/error/failure.dart';
// import 'package:ecom_riverpod/core/storage/token_storage.dart';
// import 'package:ecom_riverpod/features/auth/data/datasources/auth_local_data_source.dart';
// import 'package:ecom_riverpod/features/auth/data/datasources/auth_remote_data_source.dart';
// import 'package:ecom_riverpod/features/auth/data/repositories/auth_repository_impl.dart';
// import 'package:ecom_riverpod/features/auth/domain/repositories/auth_repository.dart';
// import 'package:ecom_riverpod/features/auth/data/models/auth_response_model.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';

// import '../../../../mock_data.dart';

// class MockAuthRemoteDataSource extends Mock implements AuthRemoteDataSource {}

// class MockAuthLocalDataSource extends Mock implements AuthLocalDataSource {}

// class MockTokenStorage extends Mock implements TokenStorage {}

// void main() {
//   late AuthRemoteDataSource remoteDataSource;
//   late AuthLocalDataSource localDataSource;

//   late AuthRepository repository;

//   const username = 'username';
//   const password = 'password';

//   setUp(() {
//     remoteDataSource = MockAuthRemoteDataSource();
//     localDataSource = MockAuthLocalDataSource();
//     repository = AuthRepositoryImpl(localDataSource, remoteDataSource);
//   });
// }

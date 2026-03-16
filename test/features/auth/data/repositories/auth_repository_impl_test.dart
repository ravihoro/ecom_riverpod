import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/error/exceptions.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/core/storage/token_storage.dart';
import 'package:ecom_riverpod/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:ecom_riverpod/features/auth/data/models/auth_response_model.dart';
import 'package:ecom_riverpod/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:ecom_riverpod/features/auth/domain/entities/auth_session.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mock_data.dart';

class MockAuthRemoteDataSource extends Mock implements AuthRemoteDataSource {}

class MockTokenStorage extends Mock implements TokenStorage {}

void main() {
  late AuthRemoteDataSource remoteDataSource;
  late TokenStorage tokenStorage;

  late AuthRepositoryImpl repository;

  const username = 'username';
  const password = 'password';

  setUp(() {
    remoteDataSource = MockAuthRemoteDataSource();
    tokenStorage = MockTokenStorage();
    repository = AuthRepositoryImpl(remoteDataSource, tokenStorage);
  });

  group('should test auth and refresh tokens', () {
    test(
      'should return auth response session and store tokens when login succeeds',
      () async {
        when(
          () => remoteDataSource.login(username, password),
        ).thenAnswer((_) async => mockAuthResponseModel);

        when(
          () => tokenStorage.saveTokens(
            accessToken: any(named: 'accessToken'),
            refreshToken: any(named: 'refreshToken'),
          ),
        ).thenAnswer((_) async {});

        final either = await repository.login(username, password);

        verify(() => remoteDataSource.login(username, password)).called(1);
        verifyNoMoreInteractions(remoteDataSource);

        verify(
          () => tokenStorage.saveTokens(
            accessToken: mockAuthResponseModel.accessToken,
            refreshToken: mockAuthResponseModel.refreshToken,
          ),
        ).called(1);

        expect(either, Right(mockAuthResponseModel.toEntity()));
      },
    );

    test('should return auth failure on auth exception', () async {
      when(
        () => remoteDataSource.login(username, password),
      ).thenThrow(AuthException('Login Failed'));

      final expectedAuthFailure = await repository.login(username, password);

      verify(() => remoteDataSource.login(username, password)).called(1);

      verifyNoMoreInteractions(remoteDataSource);

      expect(
        expectedAuthFailure,
        Left<Failure, AuthSession>(AuthFailure('Login Failed')),
      );
    });

    test('should return network failure on auth exception', () async {
      when(
        () => remoteDataSource.login(username, password),
      ).thenThrow(NetworkException('Network Issue'));

      final expectedAuthFailure = await repository.login(username, password);

      verify(() => remoteDataSource.login(username, password)).called(1);

      verifyNoMoreInteractions(remoteDataSource);

      expect(
        expectedAuthFailure,
        Left<Failure, AuthSession>(NetworkFailure('Network Issue')),
      );
    });

    test('should return server failure on auth exception', () async {
      when(
        () => remoteDataSource.login(username, password),
      ).thenThrow(ServerException('Server Exception'));

      final expectedAuthFailure = await repository.login(username, password);

      verify(() => remoteDataSource.login(username, password)).called(1);

      verifyNoMoreInteractions(remoteDataSource);

      expect(
        expectedAuthFailure,
        Left<Failure, AuthSession>(ServerFailure('Server Exception')),
      );
    });
  });

  group('should test isLoggedIn()', () {
    test('should return true if token is available', () async {
      when(
        () => tokenStorage.getAccessToken(),
      ).thenAnswer((_) async => 'accessToken');

      final value = await repository.isLoggedIn();

      expect(value, true);
    });

    test('should return false if token is null', () async {
      when(() => tokenStorage.getAccessToken()).thenAnswer((_) async => null);

      final value = await repository.isLoggedIn();

      expect(value, false);
    });
  });
}

import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/domain/entities/auth_session.dart';
import 'package:ecom_riverpod/core/domain/entities/user.dart';
import 'package:ecom_riverpod/core/error/exceptions.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:ecom_riverpod/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:ecom_riverpod/features/auth/data/models/auth_response_model.dart';
import 'package:ecom_riverpod/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mock_data.dart';

class MockAuthLocalDataSource extends Mock implements AuthLocalDataSource {}

class MockAuthRemoteDataSource extends Mock implements AuthRemoteDataSource {}

void main() {
  late AuthLocalDataSource localDataSource;
  late AuthRemoteDataSource remoteDataSource;

  late AuthRepositoryImpl repository;

  final authModel = AuthResponseModel.fromJson(mockLoginData);

  const username = 'username';
  const password = 'password';

  setUp(() {
    localDataSource = MockAuthLocalDataSource();
    remoteDataSource = MockAuthRemoteDataSource();
    repository = AuthRepositoryImpl(localDataSource, remoteDataSource);
  });

  group('should test login', () {
    test(
      'should save tokens and return auth response session when login succeeds',
      () async {
        when(
          () => remoteDataSource.login(username, password),
        ).thenAnswer((_) async => mockAuthResponseModel);

        when(
          () => localDataSource.saveTokens(
            accessToken: any(named: 'accessToken'),
            refreshToken: any(named: 'refreshToken'),
          ),
        ).thenAnswer((_) async {});

        final either = await repository.login(username, password);

        verify(
          () => localDataSource.saveTokens(
            accessToken: mockAuthResponseModel.accessToken,
            refreshToken: mockAuthResponseModel.refreshToken,
          ),
        ).called(1);

        verify(() => remoteDataSource.login(username, password)).called(1);
        verifyNoMoreInteractions(remoteDataSource);

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

    test('should return network failure on network exception', () async {
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

    test('should return server failure on server exception', () async {
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

  group('should test getUser', () {
    test('should return user', () async {
      when(() => remoteDataSource.getUser()).thenAnswer((_) async => authModel);

      final either = await repository.getUser();

      verify(() => remoteDataSource.getUser()).called(1);

      expect(either, Right(authModel.toEntity().user));
    });

    test('should return auth failure on auth exception', () async {
      when(
        () => remoteDataSource.getUser(),
      ).thenThrow(AuthException('Invalid/Expired Tokens'));

      final expectedAuthFailure = await repository.getUser();

      verify(() => remoteDataSource.getUser()).called(1);

      verifyNoMoreInteractions(remoteDataSource);

      expect(
        expectedAuthFailure,
        Left<Failure, User>(AuthFailure('Invalid/Expired Tokens')),
      );
    });

    test('should return server failure on server exception', () async {
      when(
        () => remoteDataSource.getUser(),
      ).thenThrow(ServerException('Server exception'));

      final expectedAuthFailure = await repository.getUser();

      verify(() => remoteDataSource.getUser()).called(1);

      verifyNoMoreInteractions(remoteDataSource);

      expect(
        expectedAuthFailure,
        Left<Failure, User>(ServerFailure('Server exception')),
      );
    });

    test('should return network failure on network exception', () async {
      when(
        () => remoteDataSource.getUser(),
      ).thenThrow(NetworkException('Network exception'));

      final expectedAuthFailure = await repository.getUser();

      verify(() => remoteDataSource.getUser()).called(1);

      verifyNoMoreInteractions(remoteDataSource);

      expect(
        expectedAuthFailure,
        Left<Failure, User>(NetworkFailure('Network exception')),
      );
    });
  });

  group('should test auth and refresh tokens', () {
    test('should save tokens', () async {
      when(
        () => localDataSource.saveTokens(
          accessToken: any(named: 'accessToken'),
          refreshToken: any(named: 'refreshToken'),
        ),
      ).thenAnswer((_) async {});

      await repository.saveTokens(
        accessToken: mockAuthResponseModel.accessToken,
        refreshToken: mockAuthResponseModel.refreshToken,
      );

      verify(
        () => localDataSource.saveTokens(
          accessToken: mockAuthResponseModel.accessToken,
          refreshToken: mockAuthResponseModel.refreshToken,
        ),
      ).called(1);
    });

    test('should return auth token', () async {
      when(() => localDataSource.getAccessToken()).thenAnswer((_) async {
        return 'accessToken';
      });

      final accessToken = await repository.getAccessToken();

      verify(() => localDataSource.getAccessToken()).called(1);

      expect(accessToken, 'accessToken');
    });

    test('should return refresh token', () async {
      when(() => localDataSource.getRefreshToken()).thenAnswer((_) async {
        return 'refreshToken';
      });

      final refreshToken = await repository.getRefreshToken();

      verify(() => localDataSource.getRefreshToken()).called(1);

      expect(refreshToken, 'refreshToken');
    });

    test('should clear tokens', () async {
      when(() => localDataSource.clear()).thenAnswer((_) async {});

      await repository.clear();

      verify(() => localDataSource.clear()).called(1);
    });
  });

  group('should test isLoggedIn()', () {
    test('should return true if token is available', () async {
      when(
        () => localDataSource.getAccessToken(),
      ).thenAnswer((_) async => 'accessToken');

      final value = await repository.isLoggedIn();

      expect(value, true);
    });

    test('should return false if token is null', () async {
      when(
        () => localDataSource.getAccessToken(),
      ).thenAnswer((_) async => null);

      final value = await repository.isLoggedIn();

      expect(value, false);
    });
  });

  test('should test logout', () async {
    when(() => localDataSource.clear()).thenAnswer((_) async => {});

    bool value = await repository.logout();

    verify(() => localDataSource.clear()).called(1);

    expect(value, true);
  });
}

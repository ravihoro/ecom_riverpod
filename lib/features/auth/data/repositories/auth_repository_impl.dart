import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/domain/entities/auth_session.dart';
import 'package:ecom_riverpod/core/error/exceptions.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:ecom_riverpod/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:ecom_riverpod/features/auth/data/models/auth_response_model.dart';
import 'package:ecom_riverpod/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthLocalDataSource _localDataSource;
  final AuthRemoteDataSource _remoteDataSource;

  AuthRepositoryImpl(this._localDataSource, this._remoteDataSource);

  @override
  Future<Either<Failure, AuthSession>> login(
    String username,
    String password,
  ) async {
    try {
      final model = await _remoteDataSource.login(username, password);

      await _localDataSource.saveTokens(
        accessToken: model.accessToken,
        refreshToken: model.refreshToken,
      );

      return Right(model.toEntity());
    } on AuthException catch (e) {
      return Left(AuthFailure(e.message));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<bool> isLoggedIn() async {
    final accessToken = await _localDataSource.getAccessToken();

    if (accessToken == null) return false;

    return true;
  }

  @override
  Future<void> clear() async {
    return await _localDataSource.clear();
  }

  @override
  Future<String?> getAccessToken() async {
    return await _localDataSource.getAccessToken();
  }

  @override
  Future<String?> getRefreshToken() async {
    return await _localDataSource.getRefreshToken();
  }

  @override
  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    return await _localDataSource.saveTokens(
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }
}

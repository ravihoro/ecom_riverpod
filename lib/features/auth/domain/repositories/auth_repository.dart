import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/domain/entities/auth_session.dart';
import 'package:ecom_riverpod/core/error/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthSession>> login(String username, String password);

  Future<bool> logout();

  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  });

  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();

  Future<void> clear();

  Future<bool> isLoggedIn();
}

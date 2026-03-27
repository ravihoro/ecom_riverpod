import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/domain/entities/user_detail.dart';
import 'package:ecom_riverpod/core/error/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserDetail>> login(String username, String password);

  Future<Either<Failure, UserDetail>> getUser();

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

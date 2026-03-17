import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/domain/entities/auth_session.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/core/usecase/usecase.dart';
import 'package:ecom_riverpod/features/auth/domain/repositories/auth_repository.dart';
import 'package:ecom_riverpod/features/auth/domain/usecases/sign_in_params.dart';

class SignInUseCase extends UseCase<AuthSession, SignInParams> {
  final AuthRepository _authRepository;

  SignInUseCase(this._authRepository);

  @override
  Future<Either<Failure, AuthSession>> call(SignInParams params) {
    return _authRepository.login(params.username, params.password);
  }
}

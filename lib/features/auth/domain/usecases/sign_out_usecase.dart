import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/core/usecase/usecase.dart';
import 'package:ecom_riverpod/features/auth/domain/repositories/auth_repository.dart';

class SignOutUsecase implements UseCase<bool, NoParams> {
  final AuthRepository _repository;

  const SignOutUsecase(this._repository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) async {
    bool val = await _repository.logout();
    return Right(val);
  }
}

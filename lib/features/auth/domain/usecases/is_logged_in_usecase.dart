import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/core/usecase/usecase.dart';
import 'package:ecom_riverpod/features/auth/domain/repositories/auth_repository.dart';

class IsLoggedInUsecase implements UseCase<bool, NoParams> {
  final AuthRepository _repository;

  const IsLoggedInUsecase(this._repository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) async {
    final isLoggedIn = await _repository.isLoggedIn();

    if (!isLoggedIn) return Left(TokenFailure('Token null'));

    return Right(true);
  }
}

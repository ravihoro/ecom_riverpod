import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/domain/entities/user.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/core/usecase/usecase.dart';
import 'package:ecom_riverpod/features/auth/domain/repositories/auth_repository.dart';

class GetUserUsecase extends UseCase<User, NoParams> {
  final AuthRepository _repository;

  GetUserUsecase(this._repository);

  @override
  Future<Either<Failure, User>> call(NoParams params) async {
    return await _repository.getUser();
  }
}

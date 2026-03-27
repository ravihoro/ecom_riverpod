import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/domain/entities/user_detail.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/core/usecase/usecase.dart';
import 'package:ecom_riverpod/features/auth/domain/repositories/auth_repository.dart';

class GetUserUsecase extends UseCase<UserDetail, NoParams> {
  final AuthRepository _repository;

  GetUserUsecase(this._repository);

  @override
  Future<Either<Failure, UserDetail>> call(NoParams params) async {
    return await _repository.getUser();
  }
}

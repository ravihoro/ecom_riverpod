// import 'package:dartz/dartz.dart';
// import 'package:ecom_riverpod/core/domain/entities/auth_session.dart';
// import 'package:ecom_riverpod/core/error/failure.dart';
// import 'package:ecom_riverpod/core/usecase/usecase.dart';
// import 'package:ecom_riverpod/features/auth/domain/repositories/auth_repository.dart';
// import 'package:ecom_riverpod/features/auth/domain/usecases/login_params.dart';

// class LoginUseCase extends UseCase<AuthSession, LoginParams> {
//   final AuthRepository repository;

//   LoginUseCase(this.repository);

//   @override
//   Future<Either<Failure, AuthSession>> call(LoginParams params) {
//     return repository.login(params.username, params.password);
//   }
// }

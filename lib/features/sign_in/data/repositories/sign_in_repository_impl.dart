// import 'package:dartz/dartz.dart';
// import 'package:ecom_riverpod/core/domain/entities/auth_session.dart';
// import 'package:ecom_riverpod/core/error/exceptions.dart';
// import 'package:ecom_riverpod/core/error/failure.dart';
// import 'package:ecom_riverpod/features/sign_in/data/datasources/sign_in_data_source.dart';
// import 'package:ecom_riverpod/features/sign_in/data/models/auth_response_model.dart';
// import 'package:ecom_riverpod/features/sign_in/domain/repositories/sign_in_repository.dart';

// class SignInRepositoryImpl implements SignInRepository {
//   final SignInDataSource remoteDataSource;

//   SignInRepositoryImpl(this.remoteDataSource);

//   @override
//   Future<Either<Failure, AuthSession>> login(
//     String username,
//     String password,
//   ) async {
//     try {
//       final model = await remoteDataSource.login(username, password);
//       return Right(model.toEntity());
//     } on AuthException catch (e) {
//       return Left(AuthFailure(e.message));
//     } on NetworkException catch (e) {
//       return Left(NetworkFailure(e.message));
//     } on ServerException catch (e) {
//       return Left(ServerFailure(e.message));
//     }
//   }
// }

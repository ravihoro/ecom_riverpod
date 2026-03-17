// import 'package:dartz/dartz.dart';
// import 'package:ecom_riverpod/features/auth/data/models/auth_response_model.dart';
// import 'package:ecom_riverpod/features/sign_in/domain/repositories/sign_in_repository.dart';
// import 'package:ecom_riverpod/features/auth/domain/usecases/sign_in_params.dart';
// import 'package:ecom_riverpod/features/auth/domain/usecases/sign_in_usecase.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';

// import '../../../../mock_data.dart';

// class MockSignInRepository extends Mock implements SignInRepository {}

// void main() {
//   late SignInUseCase usecase;
//   late MockSignInRepository repository;

//   setUp(() {
//     repository = MockSignInRepository();
//     usecase = SignInUseCase(repository);
//   });

//   test('should return auth session when login succeeds', () async {
//     const username = 'username';
//     const password = 'password';

//     final authSession = mockAuthResponseModel.toEntity();

//     when(
//       () => repository.login(username, password),
//     ).thenAnswer((_) async => Right(authSession));

//     final result = await usecase(
//       SignInParams(username: username, password: password),
//     );

//     expect(result, Right(authSession));

//     verify(() => repository.login(username, password)).called(1);

//     verifyNoMoreInteractions(repository);
//   });
// }

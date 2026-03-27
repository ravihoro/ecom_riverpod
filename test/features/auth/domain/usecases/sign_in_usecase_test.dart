import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/features/auth/data/models/user_detail_model.dart';
import 'package:ecom_riverpod/features/auth/domain/usecases/sign_in_params.dart';
import 'package:ecom_riverpod/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:ecom_riverpod/features/auth/domain/repositories/auth_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mock_data.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late SignInUseCase usecase;
  late MockAuthRepository repository;

  setUp(() {
    repository = MockAuthRepository();
    usecase = SignInUseCase(repository);
  });

  test('should return user detail when login succeeds', () async {
    const username = 'username';
    const password = 'password';

    final user = UserDetailModel.fromJson(mockUserDetail).toDomain();

    when(
      () => repository.login(username, password),
    ).thenAnswer((_) async => Right(user));

    final result = await usecase(
      SignInParams(username: username, password: password),
    );

    expect(result, Right(user));

    verify(() => repository.login(username, password)).called(1);

    verifyNoMoreInteractions(repository);
  });
}

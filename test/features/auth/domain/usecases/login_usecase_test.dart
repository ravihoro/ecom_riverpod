import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/features/auth/data/models/auth_response_model.dart';
import 'package:ecom_riverpod/features/auth/domain/repositories/auth_repository.dart';
import 'package:ecom_riverpod/features/auth/domain/usecases/login_params.dart';
import 'package:ecom_riverpod/features/auth/domain/usecases/login_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mock_data.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late LoginUseCase usecase;
  late MockAuthRepository repository;

  setUp(() {
    repository = MockAuthRepository();
    usecase = LoginUseCase(repository);
  });

  test('should return auth session when login succeeds', () async {
    const username = 'username';
    const password = 'password';

    final authSession = mockAuthResponseModel.toEntity();

    when(
      () => repository.login(username, password),
    ).thenAnswer((_) async => Right(authSession));

    final result = await usecase(
      LoginParams(username: username, password: password),
    );

    expect(result, Right(authSession));

    verify(() => repository.login(username, password)).called(1);

    verifyNoMoreInteractions(repository);
  });
}

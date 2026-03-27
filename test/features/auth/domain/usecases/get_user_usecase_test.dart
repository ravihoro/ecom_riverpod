import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/core/usecase/usecase.dart';
import 'package:ecom_riverpod/features/auth/data/models/user_detail_model.dart';
import 'package:ecom_riverpod/features/auth/domain/repositories/auth_repository.dart';
import 'package:ecom_riverpod/features/auth/domain/usecases/get_user_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mock_data.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late AuthRepository repository;

  late GetUserUsecase usecase;

  final user = UserDetailModel.fromJson(mockUserDetail).toDomain();

  setUp(() {
    repository = MockAuthRepository();
    usecase = GetUserUsecase(repository);
  });

  test('should get user', () async {
    when(() => repository.getUser()).thenAnswer((_) async => Right(user));

    final expectedUser = await usecase(NoParams());

    verify(() => repository.getUser()).called(1);

    expect(expectedUser, Right(user));
  });

  test('should get invalid token', () async {
    when(
      () => repository.getUser(),
    ).thenAnswer((_) async => Left(AuthFailure("Invalid Token")));

    final failure = await usecase(NoParams());

    expect(failure, Left(AuthFailure('Invalid Token')));
  });
}

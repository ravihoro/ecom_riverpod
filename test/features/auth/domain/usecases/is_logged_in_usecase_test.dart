import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/core/storage/token_storage.dart';
import 'package:ecom_riverpod/core/usecase/usecase.dart';
import 'package:ecom_riverpod/features/auth/domain/repositories/auth_repository.dart';
import 'package:ecom_riverpod/features/auth/domain/usecases/is_logged_in_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late IsLoggedInUsecase usecase;

  late AuthRepository repository;

  setUp(() {
    repository = MockAuthRepository();
    usecase = IsLoggedInUsecase(repository);
  });

  test('should return true if token is present', () async {
    when(() => repository.isLoggedIn()).thenAnswer((_) async => true);

    final result = await usecase(NoParams());

    verify(() => repository.isLoggedIn()).called(1);

    expect(result.isRight(), true);
    expect(result.getOrElse(() => false), true);
  });

  test('should return failure if token is null', () async {
    when(() => repository.isLoggedIn()).thenAnswer((_) async => false);

    final result = await usecase(NoParams());

    verify(() => repository.isLoggedIn()).called(1);

    expect(result.fold((l) => l, (_) => null), isA<TokenFailure>());
  });
}

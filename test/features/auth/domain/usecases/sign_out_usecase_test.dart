import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/usecase/usecase.dart';
import 'package:ecom_riverpod/features/auth/domain/repositories/auth_repository.dart';
import 'package:ecom_riverpod/features/auth/domain/usecases/sign_out_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late SignOutUsecase usecase;
  late MockAuthRepository repository;

  setUp(() {
    repository = MockAuthRepository();
    usecase = SignOutUsecase(repository);
  });

  test('should return true after logout', () async {
    when(() => repository.logout()).thenAnswer((_) async => true);

    final either = await usecase.call(NoParams());

    verify(() => repository.logout()).called(1);

    expect(either, isA<Right>());
  });
}

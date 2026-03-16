import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/core/usecase/usecase.dart';
import 'package:ecom_riverpod/features/auth/domain/usecases/is_logged_in_usecase.dart';
import 'package:ecom_riverpod/features/auth/presentation/controller/auth_controller.dart';
import 'package:ecom_riverpod/features/auth/presentation/state/auth_state.dart';
import 'package:ecom_riverpod/features/auth/providers/auth_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockIsLoggedInUsecase extends Mock implements IsLoggedInUsecase {}

class FakeNoParams extends Fake implements NoParams {}

void main() {
  late IsLoggedInUsecase usecase;

  late ProviderContainer container;

  setUpAll(() {
    registerFallbackValue(FakeNoParams());
  });

  setUp(() {
    usecase = MockIsLoggedInUsecase();
    container = ProviderContainer(
      overrides: [isLoggedInUseCaseProvider.overrideWithValue(usecase)],
    );
  });

  test('should set auth state as authenticated', () async {
    when(() => usecase(any())).thenAnswer((_) async => const Right(true));

    final states = <AuthState>[];

    container.listen(authControllerProvider, (previous, next) {
      states.add(next);
    }, fireImmediately: true);

    container.read(authControllerProvider);

    await Future.delayed(Duration.zero);

    expect(states[0], isA<AuthLoading>());
    expect(states[1], isA<Authenticated>());
  });

  test('should set auth state unauthenticated', () async {
    when(
      () => usecase(any()),
    ).thenAnswer((_) async => const Left(TokenFailure('Token is null')));

    final states = <AuthState>[];

    container.listen(authControllerProvider, (previous, next) {
      states.add(next);
    }, fireImmediately: true);

    container.read(authControllerProvider);

    await Future.delayed(Duration.zero);

    expect(states[0], isA<AuthLoading>());
    expect(states[1], isA<UnAuthenticated>());
  });
}

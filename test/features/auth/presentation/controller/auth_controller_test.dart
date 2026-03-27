import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/core/usecase/usecase.dart';
import 'package:ecom_riverpod/features/auth/data/models/user_detail_model.dart';
import 'package:ecom_riverpod/features/auth/domain/usecases/get_user_usecase.dart';
import 'package:ecom_riverpod/features/auth/domain/usecases/is_logged_in_usecase.dart';
import 'package:ecom_riverpod/features/auth/domain/usecases/sign_out_usecase.dart';
import 'package:ecom_riverpod/features/auth/presentation/controller/auth_controller.dart';
import 'package:ecom_riverpod/features/auth/presentation/state/auth_state.dart';
import 'package:ecom_riverpod/features/auth/providers/auth_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mock_data.dart';

class MockIsLoggedInUsecase extends Mock implements IsLoggedInUsecase {}

class MockSignoutUsecase extends Mock implements SignOutUsecase {}

class MockGetUserUsecase extends Mock implements GetUserUsecase {}

class FakeNoParams extends Fake implements NoParams {}

void main() {
  late IsLoggedInUsecase usecase;

  late SignOutUsecase signOutUsecase;

  late GetUserUsecase getUserUsecase;

  late ProviderContainer container;

  final user = UserDetailModel.fromJson(mockUserDetail).toDomain();

  setUpAll(() {
    registerFallbackValue(FakeNoParams());
  });

  setUp(() {
    usecase = MockIsLoggedInUsecase();
    signOutUsecase = MockSignoutUsecase();
    getUserUsecase = MockGetUserUsecase();
    container = ProviderContainer(
      overrides: [
        isLoggedInUseCaseProvider.overrideWithValue(usecase),
        signOutUseCaseProvider.overrideWithValue(signOutUsecase),
        getUserUseCaseProvider.overrideWithValue(getUserUsecase),
      ],
    );
  });

  test('should set auth state as authenticated', () async {
    when(() => usecase(any())).thenAnswer((_) async => const Right(true));

    when(() => getUserUsecase(any())).thenAnswer((_) async => Right(user));

    final states = <AuthState>[];

    container.listen(authControllerProvider, (previous, next) {
      states.add(next);
    }, fireImmediately: true);

    container.read(authControllerProvider);

    await Future.delayed(Duration.zero);

    expect(states[0], isA<AuthLoading>());
    expect(states[1], isA<AuthLoading>());
    expect(states[2], isA<Authenticated>());
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

  test('should become unauthenticated after signout', () async {
    when(() => usecase(any())).thenAnswer((_) async => const Right(true));

    when(() => getUserUsecase(any())).thenAnswer((_) async => Right(user));

    when(
      () => signOutUsecase.call(any<NoParams>()),
    ).thenAnswer((_) async => const Right(true));

    final authStates = <AuthState>[];

    container.listen(authControllerProvider, (prev, next) {
      authStates.add(next);
    }, fireImmediately: true);

    await container.read(authControllerProvider.notifier).signOut();

    verify(() => signOutUsecase(any())).called(1);

    await Future.delayed(Duration.zero);

    expect(authStates[2], isA<UnAuthenticated>());
  });

  test('should set user', () async {
    when(() => usecase(any())).thenAnswer((_) async => const Right(true));

    when(() => getUserUsecase(any())).thenAnswer((_) async => Right(user));

    final authStates = <AuthState>[];

    container.listen(authControllerProvider, (prev, next) {
      authStates.add(next);
    }, fireImmediately: true);

    await Future.delayed(Duration.zero);

    verify(() => getUserUsecase(any())).called(1);

    expect(authStates[2], isA<Authenticated>());
  });

  test('should set unauthenticated in case of invalid token', () async {
    when(() => usecase(any())).thenAnswer((_) async => const Right(true));

    when(
      () => getUserUsecase(any()),
    ).thenAnswer((_) async => Left(AuthFailure('Token Expired')));

    final authStates = <AuthState>[];

    container.listen(authControllerProvider, (prev, next) {
      authStates.add(next);
    }, fireImmediately: true);

    await Future.delayed(Duration.zero);

    verify(() => getUserUsecase(any())).called(1);

    expect(authStates[2], isA<UnAuthenticated>());
  });
}

import 'package:dartz/dartz.dart';
import 'package:ecom_riverpod/core/error/failure.dart';
import 'package:ecom_riverpod/features/auth/data/models/user_detail_model.dart';
import 'package:ecom_riverpod/features/auth/domain/repositories/auth_repository.dart';
import 'package:ecom_riverpod/features/auth/providers/auth_providers.dart';
import 'package:ecom_riverpod/features/home/presentation/page/home_page.dart';
import 'package:ecom_riverpod/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test/mock_data.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late AuthRepository repository;

  final user = UserDetailModel.fromJson(mockUserDetail).toDomain();

  setUp(() {
    repository = MockAuthRepository();
  });

  testWidgets('should successfully login', (tester) async {
    when(() => repository.isLoggedIn()).thenAnswer((_) async => false);
    when(
      () => repository.login(any(), any()),
    ).thenAnswer((_) async => Right(user));

    await tester.pumpWidget(
      ProviderScope(
        overrides: [authRepositoryProvider.overrideWithValue(repository)],
        child: MyApp(),
      ),
    );

    await tester.pumpAndSettle();

    await tester.tap(find.text('Profile'));

    await tester.pumpAndSettle();

    final usernameField = find.byKey(const Key('usernameField'));

    expect(usernameField, findsOneWidget);

    await tester.enterText(usernameField, 'emilys');

    await tester.pump();

    final passwordField = find.byKey(const Key('passwordField'));

    expect(passwordField, findsOneWidget);

    await tester.enterText(passwordField, 'emilyspass');

    await tester.pump();

    final button = find.byKey(const Key('buttonKey'));

    expect(button, findsOneWidget);

    await tester.tap(button);

    await tester.pumpAndSettle();

    expect(find.byType(HomePage), findsOneWidget);
  });

  testWidgets('should show snackbar for invalid credentials', (tester) async {
    when(() => repository.isLoggedIn()).thenAnswer((_) async => false);

    when(
      () => repository.login(any(), any()),
    ).thenAnswer((_) async => Left(AuthFailure('Invalid Credentials')));

    await tester.pumpWidget(
      ProviderScope(
        overrides: [authRepositoryProvider.overrideWithValue(repository)],
        child: MyApp(),
      ),
    );

    await tester.pumpAndSettle();

    await tester.tap(find.text('Profile'));

    await tester.pumpAndSettle();

    final usernameField = find.byKey(const Key('usernameField'));

    expect(usernameField, findsOneWidget);

    await tester.enterText(usernameField, 'emilys');

    await tester.pump();

    final passwordField = find.byKey(const Key('passwordField'));

    expect(passwordField, findsOneWidget);

    await tester.enterText(passwordField, 'emilyspass');

    await tester.pump();

    final button = find.byKey(const Key('buttonKey'));

    expect(button, findsOneWidget);

    await tester.tap(button);

    await tester.pumpAndSettle();

    expect(find.text('Invalid Credentials'), findsOneWidget);
  });
}

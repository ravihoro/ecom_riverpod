import 'package:ecom_riverpod/core/design_system/components/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('should show text on button', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AppButton(text: 'Button', onPressed: () {}),
        ),
      ),
    );

    await tester.pumpAndSettle();

    final button = find.text('Button');

    expect(button, findsOneWidget);
  });

  testWidgets('should show placeholder when isloading is true', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AppButton(text: 'Button', onPressed: () {}, isLoading: true),
        ),
      ),
    );

    final loader = find.byType(CircularProgressIndicator);

    expect(loader, findsOneWidget);
  });

  testWidgets('button tap should not work when loader is shown', (
    tester,
  ) async {
    int count = 0;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AppButton(
            text: 'Button',
            enabled: true,
            onPressed: () {
              count++;
            },
            isLoading: true,
          ),
        ),
      ),
    );

    final loader = find.byType(CircularProgressIndicator);

    expect(loader, findsOneWidget);

    final button = find.byType(AppButton);

    await tester.tap(button);

    expect(count, 0);
  });

  testWidgets('should tap on button to increase count', (tester) async {
    int count = 0;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AppButton(
            text: 'Button',
            enabled: true,
            onPressed: () {
              count++;
            },
          ),
        ),
      ),
    );

    await tester.pumpAndSettle();

    final button = find.text('Button');

    await tester.tap(button);

    await tester.pumpAndSettle();

    expect(count, 1);
  });

  testWidgets('should tap on button but count should not increase', (
    tester,
  ) async {
    int count = 0;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AppButton(
            text: 'Button',
            onPressed: () {
              count++;
            },
          ),
        ),
      ),
    );

    await tester.pumpAndSettle();

    final button = find.text('Button');

    await tester.tap(button);

    await tester.pumpAndSettle();

    expect(count, 0);
  });

  testWidgets('should apply key to button', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AppButton(
            key: const Key('buttonKey'),
            text: 'Button',
            onPressed: () {},
          ),
        ),
      ),
    );

    await tester.pumpAndSettle();

    final button = find.byKey(const Key('buttonKey'));

    expect(button, findsOneWidget);
  });
}

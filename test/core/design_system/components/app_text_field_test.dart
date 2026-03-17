import 'package:ecom_riverpod/core/design_system/components/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('should display title of textfield', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AppTextField(placeholder: '', title: 'Search'),
        ),
      ),
    );

    final title = find.text('Search');

    expect(title, findsOneWidget);
  });

  testWidgets('should display placeholder', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: AppTextField(placeholder: 'Search')),
      ),
    );

    final title = find.text('Search');

    expect(title, findsOneWidget);
  });

  testWidgets('should not display obscure text', (tester) async {
    final controller = TextEditingController(text: 'Hello');

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AppTextField(
            placeholder: 'Search',
            obscureText: true,
            controller: controller,
          ),
        ),
      ),
    );

    final editableText = tester.widget<EditableText>(find.byType(EditableText));

    expect(editableText.obscureText, true);
  });

  testWidgets('should display typed text when obscure is false', (
    tester,
  ) async {
    final controller = TextEditingController(text: 'Hello');

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AppTextField(
            placeholder: 'Search',
            obscureText: false,
            controller: controller,
          ),
        ),
      ),
    );

    final text = find.text('Hello');

    expect(text, findsOneWidget);
  });
}

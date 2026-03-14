import 'package:ecom_riverpod/features/home/presentation/page/home_page.dart';
import 'package:ecom_riverpod/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('initial route should be home page', (tester) async {
    await tester.pumpWidget(MaterialApp.router(routerConfig: appRouter));

    await tester.pumpAndSettle();

    expect(find.byType(HomePage), findsOneWidget);
  });
}

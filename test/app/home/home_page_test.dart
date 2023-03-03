import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_software_task/app/shared/app_routes.dart';

void main() {
  testWidgets('should show the texts from home page', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        routes: {...appRoutes},
      ),
    );
    await tester.pumpAndSettle(const Duration(seconds: 4));

    expect(
      find.text('Hey There'),
      findsOneWidget,
    );
    expect(
      find.text('SOLID SOFTWARE TASK'),
      findsOneWidget,
    );
  });
}

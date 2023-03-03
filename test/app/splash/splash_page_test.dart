import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_software_task/app/splash/splash_page.dart';

void main() {
  testWidgets('Should finds the logo image', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: SplashPage(),
      ),
    );
    await tester.pumpAndSettle();

    expect(
      find.image(const AssetImage('assets/images/logo.png')),
      findsOneWidget,
    );
  });
}

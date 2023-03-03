import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_software_task/app/pages/home/home_controller.dart';

void main() {
  late HomeController controller;
  setUp(() => controller = HomeController());
  testWidgets('Verify if the function return a random color', (tester) async {
    final Color someColor = controller.returnColor();

    expect(someColor, isA<Color>());
  });
}

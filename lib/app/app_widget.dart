import 'package:flutter/material.dart';
import 'package:solid_software_task/app/shared/app_routes.dart';

/// Widget Class
class AppWidget extends StatelessWidget {
  /// Class contructor
  const AppWidget({super.key});

  /// This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solid Software task',
      theme: ThemeData(
        fontFamily: 'FredokaOne',
      ),
      routes: {...appRoutes},
    );
  }
}

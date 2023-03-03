import 'package:flutter/material.dart';
import 'package:solid_software_task/app/pages/home/home_page.dart';

import 'package:solid_software_task/app/splash/splash_page.dart';

/// Set all app routes
final appRoutes = <String, WidgetBuilder>{
  '/': (context) => const SplashPage(),
  '/home': (context) => const HomePage(),
};

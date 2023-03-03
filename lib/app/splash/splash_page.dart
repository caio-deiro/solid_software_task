import 'dart:async';

import 'package:flutter/material.dart';
import 'package:solid_software_task/app/shared/tools.dart';

/// Class Widget
class SplashPage extends StatefulWidget {
  /// Class Contructor
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  /// Set the splash duration in seconds
  int durationSeconds = 3;

  /// Animation timer instance
  Timer? animationTimer;

  @override
  void initState() {
    super.initState();
    animationTimer = Timer(
      Duration(seconds: durationSeconds),
      () => Navigator.pushReplacementNamed(context, '/home'),
    );
  }

  @override
  void dispose() {
    animationTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          /// Cancel splash animation and go to home page
          animationTimer?.cancel();
          if (!(animationTimer?.isActive ?? false)) {
            Navigator.pushReplacementNamed(context, '/home');
          }
        },
        child: Container(
          alignment: Alignment.center,
          color: Colors.black,
          width: Tools().getDeviceWidth(context),
          height: Tools().getDeviceHeight(context),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Image.asset(
              'assets/images/logo.png',
              width: Tools().getDeviceWidth(context),
            ),
          ),
        ),
      ),
    );
  }
}

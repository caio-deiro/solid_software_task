import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:solid_software_task/app/pages/home/home_controller.dart';
import 'package:solid_software_task/app/shared/tools.dart';

/// Class Widget
class HomePage extends StatefulWidget {
  /// Class Contructor
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// Home controller instance
  final homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => Void),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('SOLID SOFTWARE TASK'),
          centerTitle: true,
          backgroundColor: homeController.returnColor(),
        ),
        body: Container(
          alignment: Alignment.center,
          width: Tools().getDeviceWidth(context),
          height: Tools().getDeviceHeight(context),
          decoration: BoxDecoration(
            color: homeController.returnColor(),
          ),
          child: const Text(
            'Hey There',
          ),
        ),
      ),
    );
  }
}

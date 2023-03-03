import 'dart:math';

import 'package:flutter/material.dart';

import 'package:solid_software_task/app/shared/app_colors.dart';

/// Class Contructor
class HomeController {
  /// Return a color from colorList
  Color returnColor() {
    return AppColors
        .listOfColor[Random().nextInt(AppColors.listOfColor.length)];
  }
}

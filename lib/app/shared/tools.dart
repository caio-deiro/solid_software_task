import 'package:flutter/material.dart';

/// Class
class Tools {
  /// Set the app screen width
  double getDeviceWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  /// Set the app screen height
  double getDeviceHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
}

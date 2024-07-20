import 'package:flutter/material.dart';
import 'package:smart_health_home/core/app_export.dart';

class CustomButtonStyle{

  static ButtonStyle get none => ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
    elevation: MaterialStateProperty.all<double>(0),
    side: MaterialStateProperty.all<BorderSide>(
      BorderSide(color: Colors.transparent)
    )
  );
}
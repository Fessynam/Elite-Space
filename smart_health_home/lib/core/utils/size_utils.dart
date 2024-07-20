import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import '../app_export.dart';

const num FIGMA_DESIGN_WIDTH = 393;
const num FIGMA_DESIGN_HEIGHT = 852;
const num FIGMA_DESIGN_STATUS_BAR_HEIGHT = 0;

extension ResponsiveExtension on num{
  double get _width => SizeUtils.width;
  double get h => ((this * _width) / FIGMA_DESIGN_WIDTH);
  double get fsize => ((this * _width) / FIGMA_DESIGN_WIDTH);
}

extension FormatExtension on double {
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(this.toStringAsFixed(fractionDigits));
  }

  double isNonZero({num defaultValue = 0.0}){
    return this > 0 ? this : defaultValue.toDouble();
  }
}

enum DeviceType {mobile, tablet, desktop}

typedef ResponsiveBuild = Widget Function(BuildContext context, DeviceType deviceType);

class Sizer extends StatelessWidget{
  const Sizer({ Key? key, required this.builder}) : super(key: key);
  final ResponsiveBuild builder;
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation){
        SizeUtils.setScreensize(constraints, orientation);
        return builder(context, SizeUtils.deviceType);
      });
    });
  }
}

class SizeUtils{
  /// This method is used to set the screen size of the device.
  static late BoxConstraints boxConstraints;
  static late Orientation orientation;
  static late DeviceType deviceType;
  static late double width;
  static late double height;
  
  static void setScreensize(
    BoxConstraints constrainst,
    Orientation currentOrientation,
  ) {
    boxConstraints = constrainst;
    orientation = currentOrientation;
    if (orientation == Orientation.portrait) {
      width = boxConstraints.maxWidth.isNonZero(defaultValue: FIGMA_DESIGN_WIDTH);
      height = boxConstraints.maxHeight.isNonZero();
    }
    else {
      width = boxConstraints.maxHeight.isNonZero(defaultValue: FIGMA_DESIGN_WIDTH);
      height = boxConstraints.maxWidth.isNonZero();
    }
    deviceType = DeviceType.mobile;
  }
}
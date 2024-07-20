import 'package:flutter/material.dart';
import 'package:smart_health_home/core/app_export.dart';

class AppDecoration{
  static BoxDecoration get fillGray => BoxDecoration(
    color: appTheme.gray100,
  );
  static BoxDecoration get fillWhiteA => BoxDecoration(
    color: appTheme.whiteA700,
  );

  static BoxDecoration get outlineBlack => BoxDecoration(
    color: appTheme.gray100,
    border: Border.all(
      color: appTheme.black900,
      width: 0.4.h,
    )
  );
}

class BorderRaduisStyle{
  static BorderRadius get customBorderTL20 => BorderRadius.vertical (top: Radius.circular(20.h),);
  static BorderRadius get roundedBorder12 => BorderRadius.circular(12.h);
  static BorderRadius get roundedBorder4 => BorderRadius.circular(4.h);
  static BorderRadius get roundedBorder8 => BorderRadius.circular(8.h);

}
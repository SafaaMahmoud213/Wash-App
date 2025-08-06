import 'package:flutter/material.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';

ThemeData darkTheme = ThemeData(
  fontFamily: 'Noor',
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  buttonTheme: ButtonThemeData(
    buttonColor: AppColor.primaryColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
  ),

  colorScheme: ColorScheme.fromSeed(
    primary: AppColor.primaryColor,
    seedColor: AppColor.primaryColor,
    secondary: AppColor.secondaryColor,
    brightness: Brightness.dark,
  ),
);

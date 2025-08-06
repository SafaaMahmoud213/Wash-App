import 'package:flutter/material.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'Noor',
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  buttonTheme: ButtonThemeData(
    buttonColor: AppColor.primaryColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColor.primaryColor,
    primary: AppColor.primaryColor,
    secondary: AppColor.secondaryColor,
    brightness: Brightness.light,
  ),
);

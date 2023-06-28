import 'package:aicte_app/constants/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme(
          background: AppColors.backgroundColor,
          primary: AppColors.primaryColor,
          secondary: AppColors.darkGrey,
          surface: AppColors.white,
          onBackground: Colors.black,
          onPrimary: Colors.black,
          onSecondary: Colors.white,
          onSurface: Colors.black,
          brightness: Brightness.light,
          onError: Colors.black,
          error: Colors.black));

  static ThemeData dark = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme(
          background: AppColors.backgroundColor,
          primary: AppColors.primaryColor,
          secondary: AppColors.darkGrey,
          surface: AppColors.black,
          onBackground: Colors.white,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.white,
          brightness: Brightness.light,
          onError: Colors.white,
          error: Colors.white));
}

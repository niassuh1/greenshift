import 'package:flutter/material.dart';
import 'package:greenshift/theme/app_colors.dart';

ThemeData appThemeData = ThemeData(
  fontFamily: 'Geist',
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primaryColor,
    primary: AppColors.primaryColor,
    secondary: AppColors.secondaryColor,
    surface: AppColors.secondaryColor,
  ),
  scaffoldBackgroundColor: AppColors.backgroundColor,
  useMaterial3: true,
);

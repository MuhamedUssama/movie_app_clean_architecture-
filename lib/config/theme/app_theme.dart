import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTheme {
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.bottomNavBar,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.scaffoldColor,
      shadowColor: AppColors.transparent,
      titleTextStyle: TextStyle(
        color: AppColors.white,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      centerTitle: true,
    ),
  );
}

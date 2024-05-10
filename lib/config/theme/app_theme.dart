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
    ),
  );
}

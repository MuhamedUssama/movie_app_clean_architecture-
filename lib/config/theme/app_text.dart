import 'package:flutter/material.dart';
import 'package:movie_app/config/theme/app_colors.dart';

abstract class AppText {
  static const TextStyle listTitle = TextStyle(
    color: AppColors.white,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle cardTitleAndAverageCount = TextStyle(
    color: AppColors.white,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle date = TextStyle(
    color: AppColors.grey,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
}
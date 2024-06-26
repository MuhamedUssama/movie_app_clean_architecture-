import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

  static TextStyle movieDetailsTitle = TextStyle(
    color: AppColors.white,
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle movieDetailsDate = TextStyle(
    color: AppColors.grey,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle genersTitle = TextStyle(
    color: AppColors.genersTitleColor,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle movieDetailsOverView = TextStyle(
    color: AppColors.genersTitleColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle movieDetailslistTitle = TextStyle(
    color: AppColors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle searchHintStyle = TextStyle(
    color: AppColors.white.withOpacity(0.46),
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle searchInputText = TextStyle(
    color: AppColors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
  );

  static TextStyle noMoviesFound = TextStyle(
    color: AppColors.grey,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle searchMovieTitle = TextStyle(
    color: AppColors.white,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle searchDate = TextStyle(
    color: AppColors.grey,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle categoryScreenTitle = TextStyle(
    color: AppColors.white,
    fontSize: 22.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle ctegoryName = TextStyle(
    color: AppColors.white,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );
}

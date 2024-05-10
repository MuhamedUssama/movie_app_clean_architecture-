import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/config/theme/app_colors.dart';
import 'package:movie_app/config/theme/app_text.dart';

String truncateTitle(String title) {
  List<String> words = title.split(' ');
  if (words.length <= 1) {
    return title;
  } else {
    return "${words.sublist(0, 1).join(' ')}..";
  }
}

Widget customGenersWidget(String? title) {
  return Container(
    height: 25.h,
    width: 60.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4.r),
      border: Border.all(
        color: AppColors.wishListBackgorundColor,
      ),
    ),
    child: Center(
      child: Text(
        truncateTitle(title ?? ""),
        style: AppText.genersTitle,
      ),
    ),
  );
}

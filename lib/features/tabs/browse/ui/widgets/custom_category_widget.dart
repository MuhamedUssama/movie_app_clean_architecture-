import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/config/theme/app_text.dart';
import 'package:movie_app/core/utils/app_images.dart';

class CustomCategoryWidget extends StatelessWidget {
  final String categoryName;
  const CustomCategoryWidget({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.r),
      child: Container(
        height: 90.h,
        width: 158.w,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.categoryImg),
            fit: BoxFit.cover,
            opacity: 0.7,
          ),
        ),
        child: Center(child: Text(categoryName, style: AppText.ctegoryName)),
      ),
    );
  }
}

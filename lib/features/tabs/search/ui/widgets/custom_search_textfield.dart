import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/app_colors.dart';
import '../../../../../config/theme/app_text.dart';

class CustomSearchTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function function;
  const CustomSearchTextField(
      {super.key, required this.controller, required this.function});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppText.searchInputText,
      controller: controller,
      onChanged: (value) {
        value = controller.text;
        function();
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.r),
        ),
        filled: true,
        fillColor: AppColors.wishListBackgorundColor.withOpacity(0.58),
        hintText: "Search",
        hintStyle: AppText.searchHintStyle,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.w,
            color: AppColors.wishListBackgorundColor,
          ),
          borderRadius: BorderRadius.circular(50.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.w,
            color: AppColors.wishListBackgorundColor,
          ),
          borderRadius: BorderRadius.circular(50.r),
        ),
        focusColor: AppColors.wishListBackgorundColor,
        hoverColor: AppColors.wishListBackgorundColor,
        prefixIcon: const Icon(Icons.search_rounded),
        prefixIconColor: AppColors.white,
      ),
    );
  }
}

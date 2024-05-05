import 'package:flutter/material.dart';
import 'package:movie_app/config/theme/app_colors.dart';

class CustomErrorWidget extends StatelessWidget {
  final String? message;

  const CustomErrorWidget({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message ?? "",
        style: const TextStyle(color: AppColors.accent),
      ),
    );
  }
}

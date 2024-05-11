import 'package:flutter/material.dart';

import '../../config/theme/app_colors.dart';
import '../../config/theme/app_text.dart';

class NoMoviesFoundWidget extends StatelessWidget {
  const NoMoviesFoundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.local_movies,
              size: 120,
              color: AppColors.grey,
            ),
            const SizedBox(height: 6),
            Text(
              "No movies found",
              style: AppText.noMoviesFound,
            ),
          ],
        ),
      ),
    );
  }
}

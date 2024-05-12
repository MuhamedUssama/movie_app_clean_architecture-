import 'package:flutter/material.dart';
import 'package:movie_app/core/di/di.dart';

import 'cubit/category_movies_view_model.dart';

class CategoryMoviesScreen extends StatelessWidget {
  final String genreId;
  const CategoryMoviesScreen({super.key, required this.genreId});

  @override
  Widget build(BuildContext context) {
    CategoryMoviesViewModel viewModel = getIt.get<CategoryMoviesViewModel>();
    viewModel.getCategoryMovies(genreId);
    return const Placeholder();
  }
}

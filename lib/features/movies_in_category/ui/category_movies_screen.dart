import 'package:flutter/material.dart';
import 'package:movie_app/core/di/di.dart';

import 'cubit/category_movies_view_model.dart';

class CategoryMoviesScreen extends StatelessWidget {
  final String genreId;
  final String categoryName;
  const CategoryMoviesScreen(
      {super.key, required this.genreId, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    CategoryMoviesViewModel viewModel = getIt.get<CategoryMoviesViewModel>();
    viewModel.getCategoryMovies(genreId);
    return Scaffold(
      appBar: AppBar(title: Text("$categoryName Movies")),
    );
  }
}

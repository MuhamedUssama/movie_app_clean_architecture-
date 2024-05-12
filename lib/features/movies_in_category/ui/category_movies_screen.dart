import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/core/di/di.dart';
import 'package:movie_app/core/widgets/error_widget.dart';
import 'package:movie_app/core/widgets/list_separated_movies.dart';
import 'package:movie_app/core/widgets/loading_widget.dart';

import 'cubit/category_movies_states.dart';
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
      body: Padding(
        padding: EdgeInsets.only(
          top: 20.h,
          right: 20.w,
          left: 20.w,
        ),
        child: BlocBuilder<CategoryMoviesViewModel, CategoryMoviesStates>(
          bloc: viewModel,
          builder: (context, state) {
            if (state is CategoryMoviesErrorState) {
              return CustomErrorWidget(message: state.errorMessage);
            } else if (state is CategoryMoviesSuccessState) {
              return Column(
                children: [
                  Expanded(child: ListOfSeparatedMovies(movies: state.movies)),
                  SizedBox(height: 20.h),
                ],
              );
            } else {
              return const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: LoadingWidget()),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

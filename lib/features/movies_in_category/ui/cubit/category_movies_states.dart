import 'package:movie_app/features/movies_in_category/domain/models/category_movies_dto.dart';

abstract class CategoryMoviesStates {}

class CategoryMoviesLoadingState extends CategoryMoviesStates {}

class CategoryMoviesErrorState extends CategoryMoviesStates {
  String? errorMessage;
  CategoryMoviesErrorState(this.errorMessage);
}

class CategoryMoviesSuccessState extends CategoryMoviesStates {
  List<CategoryMoviesDto>? movies;
  CategoryMoviesSuccessState(this.movies);
}

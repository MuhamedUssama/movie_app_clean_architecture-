import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/movies_in_category/domain/usecases/category_movies_usecase.dart';

import 'category_movies_states.dart';

@injectable
class CategoryMoviesViewModel extends Cubit<CategoryMoviesStates> {
  CategoryMoviesUseCase categoryMovies;

  @factoryMethod
  CategoryMoviesViewModel(this.categoryMovies)
      : super(CategoryMoviesLoadingState());

  void getCategoryMovies(String? genreId) async {
    emit(CategoryMoviesLoadingState());
    try {
      final movies = await categoryMovies.invoke(genreId);
      emit(CategoryMoviesSuccessState(movies));
    } catch (errorMessage) {
      emit(CategoryMoviesErrorState(errorMessage.toString()));
    }
  }
}

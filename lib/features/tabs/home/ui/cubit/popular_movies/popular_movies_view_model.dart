import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/home/domain/usecases/popular_movies_usecase.dart';

import 'popular_movies_states.dart';

@injectable
class PopularMoviesViewModel extends Cubit<PopularMoviesStates> {
  PopularMoviesUseCase onlinePopularMovies;

  @factoryMethod
  PopularMoviesViewModel(this.onlinePopularMovies)
      : super(PopularMoviesLoadingState());

  void getPopularMovies() async {
    emit(PopularMoviesLoadingState());

    try {
      var popularMovies = await onlinePopularMovies.invoke();
      emit(PopularMoviesSuccessState(popularMovies));
    } catch (error) {
      emit(PopularMoviesErrorState(error.toString()));
    }
  }
}

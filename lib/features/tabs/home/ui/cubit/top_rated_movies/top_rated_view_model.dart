import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/home/domain/usecases/top_rated_movies_usecase.dart';

import 'top_rated_movies_states.dart';

@injectable
class TopRatedViewModel extends Cubit<TopRatedMoviesStates> {
  TopRatedMoviesUseCase onlineTopRadedMovies;

  @factoryMethod
  TopRatedViewModel(this.onlineTopRadedMovies)
      : super(TopRatedMoviesLoadingState());

  void getTopRatedMovies() async {
    emit(TopRatedMoviesLoadingState());

    try {
      final movies = await onlineTopRadedMovies.invoke();
      emit(TopRatedMoviesSuccessState(movies));
    } catch (error) {
      emit(TopRatedMoviesErrorState(error.toString()));
    }
  }
}

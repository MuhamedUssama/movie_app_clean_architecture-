import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/movie_details/domain/usecases/similar_movies_usecase.dart';

import 'similar_movies_states.dart';

@injectable
class SimilarMoviesViewModel extends Cubit<SimilarMoviesStates> {
  SimilarMoviesUseCase similarMoviesUseCase;

  @factoryMethod
  SimilarMoviesViewModel(this.similarMoviesUseCase)
      : super(SimilarMoviesLoadingState());

  void getSimilarMovies(String movieId) async {
    try {
      emit(SimilarMoviesLoadingState());

      var movies = await similarMoviesUseCase.invoke(movieId);
      emit(SimilarMoviesSuccessState(movies));
    } catch (error) {
      emit(SimilarMoviesErrorState(error.toString()));
    }
  }
}

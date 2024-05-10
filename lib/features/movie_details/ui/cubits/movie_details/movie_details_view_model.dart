import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/movie_details/domain/usecases/movie_details_usecase.dart';

import 'movie_details_states.dart';

@injectable
class MovieDetailsViewModel extends Cubit<MovieDetailsStates> {
  MovieDetailsUseCase movieDetailsUseCase;

  @factoryMethod
  MovieDetailsViewModel(this.movieDetailsUseCase)
      : super(MovieDetailsLoadingState());

  void getMovie(String movieId) async {
    emit(MovieDetailsLoadingState());

    try {
      var movie = await movieDetailsUseCase.invoke(movieId);
      emit(MovieDetailsSuccessState(movie));
    } catch (error) {
      emit(MovieDetailsErrorState(error.toString()));
    }
  }
}

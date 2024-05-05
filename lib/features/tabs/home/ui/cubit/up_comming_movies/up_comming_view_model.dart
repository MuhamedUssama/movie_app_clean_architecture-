import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/home/domain/usecases/up_comming_movies_usecase.dart';

import 'up_comming_states.dart';

@injectable
class UpCommingMoviesViewModel extends Cubit<UpCommingMoviesStates> {
  UpCommingMoviesUseCase onlineUpCommingMovies;

  @factoryMethod
  UpCommingMoviesViewModel(this.onlineUpCommingMovies)
      : super(UpCommingMoviesLoadingState());

  void getUpCommingMovies() async {
    emit(UpCommingMoviesLoadingState());

    try {
      var movies = await onlineUpCommingMovies.invoke();
      emit(UpCommingMoviesSuccessState(movies));
    } catch (error) {
      emit(UpCommingMoviesErrorState(error.toString()));
    }
  }
}

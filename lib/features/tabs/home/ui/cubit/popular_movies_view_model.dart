import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/home/domain/usecases/popular_movies_usecase.dart';
import 'package:movie_app/features/tabs/home/ui/cubit/home_tab_states.dart';

@injectable
class PopularMoviesViewModel extends Cubit<HomeTabStates> {
  PopularMoviesUseCase onlinePopularMovies;

  @factoryMethod
  PopularMoviesViewModel(this.onlinePopularMovies) : super(LoadingState());

  void getPopularMovies() async {
    emit(LoadingState());

    try {
      var popularMovies = await onlinePopularMovies.invoke();
      emit(SuccessState(popularMovies));
    } catch (error) {
      emit(ErrorState(error.toString()));
    }
  }
}

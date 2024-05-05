import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/home/domain/usecases/top_rated_movies_usecase.dart';
import 'package:movie_app/features/tabs/home/ui/cubit/home_tab_states.dart';

@injectable
class TopRatedViewModel extends Cubit<HomeTabStates> {
  TopRatedMoviesUseCase onlineTopRadedMovies;

  @factoryMethod
  TopRatedViewModel(this.onlineTopRadedMovies) : super(LoadingState());

  void getTopRatedMovies() async {
    emit(LoadingState());

    try {
      final movies = await onlineTopRadedMovies.invoke();
      emit(SuccessState(movies));
    } catch (error) {
      emit(ErrorState(error.toString()));
    }
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/home/domain/usecases/up_comming_movies_usecase.dart';
import 'package:movie_app/features/tabs/home/ui/cubit/home_tab_states.dart';

@injectable
class UpCommingMoviesViewModel extends Cubit<HomeTabStates> {
  UpCommingMoviesUseCase onlineUpCommingMovies;

  @factoryMethod
  UpCommingMoviesViewModel(this.onlineUpCommingMovies) : super(LoadingState());

  void getUpCommingMovies() async {
    emit(LoadingState());

    try {
      var movies = await onlineUpCommingMovies.invoke();
      emit(SuccessState(movies));
    } catch (error) {
      emit(ErrorState(error.toString()));
    }
  }
}

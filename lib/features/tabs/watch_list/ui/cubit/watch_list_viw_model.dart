import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../movie_details/data/data_sources/local/cache_movie_details.dart';
import '../../../../movie_details/domain/models/movie_details/movie_details.dart';
import 'watch_list_states.dart';

@injectable
class WatchListViewModel extends Cubit<WatchListStates> {
  late List<MovieDetails> movies;

  WatchListViewModel() : super(WatchListInitialState());

  Future<void> getWatchListMovies() async {
    if (await CacheMovieDetails.hasData()) {
      try {
        emit(WatchListLoadingState());
        movies = await CacheMovieDetails.getMovieDetails();
        emit(WatchListSuccessState(movies));
      } catch (error) {
        emit(WatchListErrorState(error.toString()));
      }
    } else {
      emit(WatchListInitialState());
    }
  }
}

import 'package:movie_app/features/tabs/home/domain/models/top_rated_movies/top_rated_movie.dart';

abstract class TopRatedMoviesStates {}

class TopRatedMoviesLoadingState extends TopRatedMoviesStates {}

class TopRatedMoviesErrorState extends TopRatedMoviesStates {
  String? message;
  TopRatedMoviesErrorState(this.message);
}

class TopRatedMoviesSuccessState extends TopRatedMoviesStates {
  List<TopRatedMovie>? data;
  TopRatedMoviesSuccessState(this.data);
}

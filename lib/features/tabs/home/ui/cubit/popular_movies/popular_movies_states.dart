import 'package:movie_app/features/tabs/home/domain/models/popular_movies/popular_movie.dart';

abstract class PopularMoviesStates {}

class PopularMoviesLoadingState extends PopularMoviesStates {}

class PopularMoviesErrorState extends PopularMoviesStates {
  String? message;
  PopularMoviesErrorState(this.message);
}

class PopularMoviesSuccessState extends PopularMoviesStates {
  List<PopularMovie>? data;
  PopularMoviesSuccessState(this.data);
}

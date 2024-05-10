import '../../../domain/models/similar_movies/similar_movie.dart';

abstract class SimilarMoviesStates {}

class SimilarMoviesLoadingState extends SimilarMoviesStates {}

class SimilarMoviesErrorState extends SimilarMoviesStates {
  String? errorMessage;
  SimilarMoviesErrorState(this.errorMessage);
}

class SimilarMoviesSuccessState extends SimilarMoviesStates {
  List<SimilarMovie>? movies;
  SimilarMoviesSuccessState(this.movies);
}

import 'package:movie_app/features/movie_details/domain/models/movie_details/movie_details.dart';

abstract class MovieDetailsStates {}

class MovieDetailsLoadingState extends MovieDetailsStates {}

class MovieDetailsErrorState extends MovieDetailsStates {
  String? errorMessage;
  MovieDetailsErrorState(this.errorMessage);
}

class MovieDetailsSuccessState extends MovieDetailsStates {
  MovieDetails? movieDetails;
  MovieDetailsSuccessState(this.movieDetails);
}

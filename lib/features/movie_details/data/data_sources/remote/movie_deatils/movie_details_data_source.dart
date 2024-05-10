import 'package:movie_app/features/movie_details/domain/models/movie_details/movie_details.dart';

abstract class MovieDetailsOnlineDataSource {
  Future<MovieDetails?>? getMovieDetails(String? movieId);
}

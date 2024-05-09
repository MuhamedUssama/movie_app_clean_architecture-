import 'package:movie_app/features/movie_details/domain/models/movie_details/movie_details.dart';

abstract class MovieDetailsRepository {
  Future<MovieDetails> getMovieDetails(String? movieId);
}

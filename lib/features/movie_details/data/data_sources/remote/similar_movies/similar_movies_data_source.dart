import 'package:movie_app/features/movie_details/domain/models/similar_movies/similar_movie.dart';

abstract class SimilarMoviesOnlineDataSource {
  Future<List<SimilarMovie>?> getSimilarMovies(String? movieId);
}

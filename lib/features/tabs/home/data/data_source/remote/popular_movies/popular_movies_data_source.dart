import 'package:movie_app/features/tabs/home/domain/models/popular_movies/popular_movie.dart';

abstract class PopularMoviesDataSource {
  Future<List<PopularMovie>?> getPopularMovies();
}

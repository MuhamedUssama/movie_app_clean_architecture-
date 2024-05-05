import 'package:movie_app/features/tabs/home/domain/models/top_rated_movies/top_rated_movie.dart';

abstract class TopRatedMoviesRepository {
  Future<List<TopRatedMovie>>? getTopRatedMovies();
}

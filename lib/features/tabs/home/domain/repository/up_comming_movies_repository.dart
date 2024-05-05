import 'package:movie_app/features/tabs/home/domain/models/up_comming_movies/up_coming_movie.dart';

abstract class UpCommingMoviesRepository {
  Future<List<UpComingMovie>?> getUpcomingMovies();
}

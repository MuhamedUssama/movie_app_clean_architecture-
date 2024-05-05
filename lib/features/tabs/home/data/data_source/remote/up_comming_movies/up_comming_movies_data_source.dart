import 'package:movie_app/features/tabs/home/domain/models/up_comming_movies/up_coming_movies.dart';

abstract class UpCommingMoviesDataSource {
  Future<List<UpComingMovie>>? getUpCommingMovies();
}

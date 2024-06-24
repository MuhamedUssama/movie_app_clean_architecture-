import 'package:hive/hive.dart';

import '../../../domain/models/movie_details/movie_details.dart';

class CacheMovieDetails {
  static Future<List<MovieDetails>> getMovieDetails() async {
    var box = await Hive.openBox('saveMovieDetails');
    // MovieDetails movieDetails = MovieDetails.fromJson(box.get('movieDetails'));
    // return movieDetails;
    List<MovieDetails> movieList = [];
    for (var movie in box.values) {
      movieList.add(MovieDetails.fromJson(movie));
    }
    return movieList;
  }

  static Future<void> saveMovieDetails(MovieDetails movieDetails) async {
    var box = await Hive.openBox('saveMovieDetails');
    if (!box.containsKey(movieDetails.id)) {
      await box.put(movieDetails.id, movieDetails.toJson());
    }
  }

  static Future<bool> isMovieSaved(int movieId) async {
    var box = await Hive.openBox('saveMovieDetails');
    return box.values
        .any((movie) => MovieDetails.fromJson(movie).id == movieId);
  }

  static Future<void> removeMovieDetails(int movieId) async {
    var box = await Hive.openBox('saveMovieDetails');
    if (box.containsKey(movieId)) {
      await box.delete(movieId);
    }
  }
}

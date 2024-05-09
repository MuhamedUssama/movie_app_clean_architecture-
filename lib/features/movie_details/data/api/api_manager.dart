import 'package:injectable/injectable.dart';
import 'package:movie_app/core/api/api_consumer.dart';
import 'package:movie_app/core/api/end_points.dart';
import 'package:movie_app/features/movie_details/data/models/movie_details/movie_details_response.dart';
import 'package:movie_app/features/movie_details/data/models/similar_movies/similar_movies_response.dart';

@singleton
@injectable
class MovieDetailsFeatureApiMnager {
  ApiConsumer apiConsumer;
  MovieDetailsFeatureApiMnager(this.apiConsumer);

  Future<MovieDetailsResponse>? getMovieDetails(String? movieId) async {
    final json = await apiConsumer.get(EndPoints.baseUrl + movieId!);
    MovieDetailsResponse movieDetailsResponse =
        MovieDetailsResponse.fromJson(json);

    return movieDetailsResponse;
  }

  Future<SimilarMoviesResponse>? getSimilarMovies(String? movieId) async {
    final json = await apiConsumer.get("${EndPoints.baseUrl}$movieId/similar");
    SimilarMoviesResponse similarMoviesResponse =
        SimilarMoviesResponse.fromJson(json);

    return similarMoviesResponse;
  }
}

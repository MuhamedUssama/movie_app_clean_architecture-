import 'package:injectable/injectable.dart';
import 'package:movie_app/core/api/api_consumer.dart';
import 'package:movie_app/core/api/end_points.dart';
import 'package:movie_app/features/tabs/home/data/models/popular_movies_response/popular_movies_response.dart';
import 'package:movie_app/features/tabs/home/data/models/top_rated_movies_response/top_rated_movies_response.dart';
import 'package:movie_app/features/tabs/home/data/models/up_comming_movies_response/up_comming_movies_response.dart';

@singleton
@injectable
class ApiManager {
  ApiConsumer apiConsumer;
  ApiManager(this.apiConsumer);

  Future<PopularMoviesResponse>? getPopularMovies() async {
    final json = await apiConsumer.get(EndPoints.popularMovies);
    PopularMoviesResponse popularMoviesResponse =
        PopularMoviesResponse.fromJson(json);

    return popularMoviesResponse;
  }

  Future<TopRatedMoviesResponses>? getTopRatedMovies() async {
    final json = await apiConsumer.get(EndPoints.topRatedMovies);
    TopRatedMoviesResponses topRatedMoviesResponse =
        TopRatedMoviesResponses.fromJson(json);

    return topRatedMoviesResponse;
  }

  Future<UpCommingMoviesResponses>? getUpCommingMovies() async {
    final json = await apiConsumer.get(EndPoints.upComingMovies);
    UpCommingMoviesResponses upCommingMoviesResponse =
        UpCommingMoviesResponses.fromJson(json);

    return upCommingMoviesResponse;
  }
}

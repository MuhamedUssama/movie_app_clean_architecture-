import 'package:injectable/injectable.dart';
import 'package:movie_app/core/api/api_consumer.dart';
import 'package:movie_app/core/api/end_points.dart';
import 'package:movie_app/features/tabs/home/data/models/popular_movies_response/popular_movies_response.dart';

@singleton
@injectable
class ApiManager {
  ApiConsumer apiConsumer;
  ApiManager(this.apiConsumer);

  Future<PopularMoviesResponse>? getPopularMovies() async {
    final respose = await apiConsumer.get(EndPoints.popularMovies);
    PopularMoviesResponse popularMoviesResponse =
        PopularMoviesResponse.fromJson(respose);

    return popularMoviesResponse;
  }
}

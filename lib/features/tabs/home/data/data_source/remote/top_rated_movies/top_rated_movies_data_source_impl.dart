import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/home/data/api/api_manager.dart';
import 'package:movie_app/features/tabs/home/domain/models/top_rated_movies/top_rated_movie.dart';

import 'top_rated_movies_data_source.dart';

@Injectable(as: TopRatedMoviesDataSource)
class TopRatedMoviesDataSourceImpl implements TopRatedMoviesDataSource {
  ApiManager apiManager;

  @factoryMethod
  TopRatedMoviesDataSourceImpl(this.apiManager);

  @override
  Future<List<TopRatedMovie>?> getTopRatedMovies() async {
    var response = await apiManager.getTopRatedMovies();
    var topRatedResponse = response!.results
        ?.map((topRatedDto) => topRatedDto.toTopRatedMovies())
        .toList();

    return topRatedResponse;
  }
}

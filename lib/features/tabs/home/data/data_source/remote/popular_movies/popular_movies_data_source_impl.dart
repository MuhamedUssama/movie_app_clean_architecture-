import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/home/data/api/api_manager.dart';
import 'package:movie_app/features/tabs/home/domain/models/popular_movies/popular_movie.dart';

import 'popular_movies_data_source.dart';

@Injectable(as: PopularMoviesDataSource)
class PopularMoviesDataSourceImpl implements PopularMoviesDataSource {
  ApiManager apiManager;

  @factoryMethod
  PopularMoviesDataSourceImpl(this.apiManager);

  @override
  Future<List<PopularMovie>?> getPopularMovies() async {
    var response = await apiManager.getPopularMovies();

    var popularMoviesResponse = response!.results
        ?.map((popularDto) => popularDto.toPopularMovie())
        .toList();

    return popularMoviesResponse;
  }
}

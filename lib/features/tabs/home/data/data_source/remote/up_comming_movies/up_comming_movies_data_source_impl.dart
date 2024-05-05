import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/home/data/api/api_manager.dart';
import 'package:movie_app/features/tabs/home/domain/models/up_comming_movies/up_coming_movie.dart';

import 'up_comming_movies_data_source.dart';

@Injectable(as: UpCommingMoviesDataSource)
class UpCommingMoviesDataSourceImpl implements UpCommingMoviesDataSource {
  ApiManager apiManager;

  @factoryMethod
  UpCommingMoviesDataSourceImpl(this.apiManager);

  @override
  Future<List<UpComingMovie>?> getUpCommingMovies() async {
    var response = await apiManager.getUpCommingMovies();
    var upCommingMoviesResponse = response!.results
        ?.map((upCommingDto) => upCommingDto.toUpCommingMovie())
        .toList();

    return upCommingMoviesResponse;
  }
}

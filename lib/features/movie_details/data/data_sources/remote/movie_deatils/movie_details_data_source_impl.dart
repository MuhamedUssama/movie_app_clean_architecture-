import 'package:injectable/injectable.dart';
import 'package:movie_app/features/movie_details/data/api/api_manager.dart';
import 'package:movie_app/features/movie_details/domain/models/movie_details/movie_details.dart';

import 'movie_details_data_source.dart';

@Injectable(as: MovieDetailsOnlineDataSource)
class MovieDetailsOnlineDataSourceImpl implements MovieDetailsOnlineDataSource {
  MovieDetailsFeatureApiManager apiManager;

  @factoryMethod
  MovieDetailsOnlineDataSourceImpl(this.apiManager);

  @override
  Future<MovieDetails?>? getMovieDetails(String? movieId) async {
    var response = await apiManager.getMovieDetails(movieId);
    return response?.toMovieDetails();
  }
}

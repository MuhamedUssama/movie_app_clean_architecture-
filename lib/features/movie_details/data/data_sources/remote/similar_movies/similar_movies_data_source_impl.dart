import 'package:injectable/injectable.dart';
import 'package:movie_app/features/movie_details/domain/models/similar_movies/similar_movie.dart';

import '../../../api/api_manager.dart';
import 'similar_movies_data_source.dart';

@Injectable(as: SimilarMoviesOnlineDataSource)
class SimilarMoviesOnlineDataSourceImpl
    implements SimilarMoviesOnlineDataSource {
  MovieDetailsFeatureApiManager apiManager;

  @factoryMethod
  SimilarMoviesOnlineDataSourceImpl(this.apiManager);

  @override
  Future<List<SimilarMovie>?> getSimilarMovies(String? movieId) async {
    var response = await apiManager.getSimilarMovies(movieId);

    var similarMovies = response?.results
        ?.map((similarMovie) => similarMovie.toSimilarMovie())
        .toList();

    return similarMovies;
  }
}

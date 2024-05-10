import 'package:injectable/injectable.dart';
import 'package:movie_app/features/movie_details/domain/models/similar_movies/similar_movie.dart';

import '../../domain/repository/similar_movies_repository.dart';
import '../data_sources/remote/similar_movies/similar_movies_data_source.dart';

@Injectable(as: SimilarMoviesRepository)
class SimilarMoviesRepositoryImpl implements SimilarMoviesRepository {
  SimilarMoviesOnlineDataSource onlineDataSource;

  @factoryMethod
  SimilarMoviesRepositoryImpl(this.onlineDataSource);

  @override
  Future<List<SimilarMovie>?> getSimilarMovies(String? movieId) {
    return onlineDataSource.getSimilarMovies(movieId);
  }
}

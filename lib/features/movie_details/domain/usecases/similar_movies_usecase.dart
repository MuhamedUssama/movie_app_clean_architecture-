import 'package:injectable/injectable.dart';

import '../models/similar_movies/similar_movie.dart';
import '../repository/similar_movies_repository.dart';

@injectable
class SimilarMoviesUseCase {
  SimilarMoviesRepository similarMoviesRepository;

  @factoryMethod
  SimilarMoviesUseCase(this.similarMoviesRepository);

  Future<List<SimilarMovie>?> invoke(String? movieId) {
    return similarMoviesRepository.getSimilarMovies(movieId);
  }
}

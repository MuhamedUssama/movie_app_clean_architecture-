import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/home/domain/models/top_rated_movies/top_rated_movie.dart';
import 'package:movie_app/features/tabs/home/domain/repository/top_rated_movies_repository.dart';

@injectable
class TopRatedMoviesUseCase {
  TopRatedMoviesRepository repository;

  @factoryMethod
  TopRatedMoviesUseCase(this.repository);

  Future<List<TopRatedMovie>?> invoke() {
    return repository.getTopRatedMovies();
  }
}

import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/home/domain/models/popular_movies/popular_movie.dart';
import 'package:movie_app/features/tabs/home/domain/repository/popular_movies_repository.dart';

@injectable
class PopularMoviesUseCase {
  PopularMoviesRepository repository;

  @factoryMethod
  PopularMoviesUseCase(this.repository);

  Future<List<PopularMovie>?> invoke() {
    return repository.getPopularMovies();
  }
}

import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/home/domain/models/up_comming_movies/up_coming_movie.dart';
import 'package:movie_app/features/tabs/home/domain/repository/up_comming_movies_repository.dart';

@injectable
class UpCommingMoviesUseCase {
  UpCommingMoviesRepository repository;

  @factoryMethod
  UpCommingMoviesUseCase(this.repository);

  Future<List<UpComingMovie>?> invoke() {
    return repository.getUpcomingMovies();
  }
}

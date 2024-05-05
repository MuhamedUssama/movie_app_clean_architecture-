import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/home/data/data_source/remote/popular_movies/popular_movies_data_source.dart';
import 'package:movie_app/features/tabs/home/domain/models/popular_movies/popular_movie.dart';
import 'package:movie_app/features/tabs/home/domain/repository/popular_movies_repository.dart';

@Injectable(as: PopularMoviesRepository)
class PopularMoviesRepositoryImpl implements PopularMoviesRepository {
  PopularMoviesDataSource onlinePopularMovies;

  @factoryMethod
  PopularMoviesRepositoryImpl(this.onlinePopularMovies);

  @override
  Future<List<PopularMovie>?> getPopularMovies() {
    return onlinePopularMovies.getPopularMovies();
  }
}

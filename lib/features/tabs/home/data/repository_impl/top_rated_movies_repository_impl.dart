import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/home/data/data_source/remote/top_rated_movies/top_rated_movies_data_source.dart';
import 'package:movie_app/features/tabs/home/domain/models/top_rated_movies/top_rated_movie.dart';
import 'package:movie_app/features/tabs/home/domain/repository/top_rated_movies_repository.dart';

@Injectable(as: TopRatedMoviesRepository)
class TopRatedMoviesRepositoryImpl implements TopRatedMoviesRepository {
  TopRatedMoviesDataSource onlineTopRatedMovies;

  @factoryMethod
  TopRatedMoviesRepositoryImpl(this.onlineTopRatedMovies);

  @override
  Future<List<TopRatedMovie>?> getTopRatedMovies() {
    return onlineTopRatedMovies.getTopRatedMovies();
  }
}

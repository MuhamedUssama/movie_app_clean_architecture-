import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/home/data/data_source/remote/up_comming_movies/up_comming_movies_data_source.dart';
import 'package:movie_app/features/tabs/home/domain/models/up_comming_movies/up_coming_movies.dart';
import 'package:movie_app/features/tabs/home/domain/repository/up_comming_movies_repository.dart';

@Injectable(as: UpCommingMoviesRepository)
class UpCommingMoviesRepositoryImpl implements UpCommingMoviesRepository {
  UpCommingMoviesDataSource onlineUpCommingMovies;

  @factoryMethod
  UpCommingMoviesRepositoryImpl(this.onlineUpCommingMovies);

  @override
  Future<List<UpComingMovie>?> getUpcomingMovies() {
    return onlineUpCommingMovies.getUpCommingMovies();
  }
}

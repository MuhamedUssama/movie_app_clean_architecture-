import 'package:injectable/injectable.dart';
import 'package:movie_app/features/movie_details/domain/models/movie_details/movie_details.dart';

import '../../domain/repository/movie_details_repository.dart';
import '../data_sources/remote/movie_deatils/movie_details_data_source.dart';

@Injectable(as: MovieDetailsRepository)
class MovieDetailsRepositoryImpl implements MovieDetailsRepository {
  MovieDetailsOnlineDataSource onlineDataSource;

  @factoryMethod
  MovieDetailsRepositoryImpl(this.onlineDataSource);

  @override
  Future<MovieDetails?>? getMovieDetails(String? movieId) {
    return onlineDataSource.getMovieDetails(movieId);
  }
}

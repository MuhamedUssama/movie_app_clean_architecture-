import 'package:injectable/injectable.dart';

import '../models/movie_details/movie_details.dart';
import '../repository/movie_details_repository.dart';

@injectable
class MovieDetailsUseCase {
  MovieDetailsRepository movieDetailsRepository;

  @factoryMethod
  MovieDetailsUseCase(this.movieDetailsRepository);

  Future<MovieDetails?>? invoke(String? movieId) {
    return movieDetailsRepository.getMovieDetails(movieId);
  }
}

import 'package:injectable/injectable.dart';
import 'package:movie_app/features/movies_in_category/domain/models/category_movies_dto.dart';

import '../repository/category_movies_repository.dart';

@injectable
class CategoryMoviesUseCase {
  CategoryMoviesRepository categoryMoviesRepository;

  @factoryMethod
  CategoryMoviesUseCase(this.categoryMoviesRepository);

  Future<List<CategoryMoviesDto>?> invoke(String? genreId) async {
    final movies = await categoryMoviesRepository.getCategoryMovies(genreId);
    return movies;
  }
}

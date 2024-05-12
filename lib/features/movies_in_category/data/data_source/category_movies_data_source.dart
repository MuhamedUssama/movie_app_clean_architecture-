import '../../domain/models/category_movies_dto.dart';

abstract class CategoryMoviesDataSource {
  Future<List<CategoryMoviesDto>?> getCategoryMovies(String? genreId);
}

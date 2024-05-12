import 'package:movie_app/features/movies_in_category/domain/models/category_movies_dto.dart';

abstract class CategoryMoviesRepository {
  Future<List<CategoryMoviesDto>?> getCategoryMovies(String? genreId);
}

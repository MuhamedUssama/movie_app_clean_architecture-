import 'package:injectable/injectable.dart';
import 'package:movie_app/features/movies_in_category/data/data_source/category_movies_data_source.dart';
import 'package:movie_app/features/movies_in_category/domain/models/category_movies_dto.dart';
import 'package:movie_app/features/movies_in_category/domain/repository/category_movies_repository.dart';

@Injectable(as: CategoryMoviesRepository)
class CategoryMoviesRepositoryImpl implements CategoryMoviesRepository {
  CategoryMoviesDataSource categoryMovies;

  @factoryMethod
  CategoryMoviesRepositoryImpl(this.categoryMovies);

  @override
  Future<List<CategoryMoviesDto>?> getCategoryMovies(String? genreId) async {
    final movies = await categoryMovies.getCategoryMovies(genreId);
    return movies;
  }
}

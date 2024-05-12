import 'package:injectable/injectable.dart';
import 'package:movie_app/features/movies_in_category/data/api/category_movies_api_manager.dart';
import 'package:movie_app/features/movies_in_category/domain/models/category_movies_dto.dart';

import 'category_movies_data_source.dart';

@Injectable(as: CategoryMoviesDataSource)
class CategoryMoviesDataSourceImpl implements CategoryMoviesDataSource {
  CategoryMoviesApiManager apiManager;

  @factoryMethod
  CategoryMoviesDataSourceImpl(this.apiManager);

  @override
  Future<List<CategoryMoviesDto>?> getCategoryMovies(String? genreId) async {
    final response = await apiManager.getCategoryMovies(genreId);
    final categoryMovies =
        response?.results?.map((movies) => movies.toCategoryMovies()).toList();

    return categoryMovies;
  }
}

import 'package:injectable/injectable.dart';
import 'package:movie_app/core/api/api_consumer.dart';
import 'package:movie_app/features/movies_in_category/data/models/category_movies_response.dart';

@injectable
@singleton
class CategoryMoviesApiManager {
  ApiConsumer apiConsumer;
  static const String _baseUrl = "https://api.themoviedb.org/3/discover/movie";

  @factoryMethod
  CategoryMoviesApiManager(this.apiConsumer);

  Future<CategoryMoviesResponse>? getCategoryMovies(String? genreId) async {
    final json = await apiConsumer
        .get(_baseUrl, queryParameters: {"with_genres": genreId});

    CategoryMoviesResponse categoryMoviesResponse =
        CategoryMoviesResponse.fromJson(json);

    return categoryMoviesResponse;
  }
}

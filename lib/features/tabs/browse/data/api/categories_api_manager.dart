import 'package:injectable/injectable.dart';
import 'package:movie_app/core/api/api_consumer.dart';
import 'package:movie_app/features/tabs/browse/data/models/categories_response.dart';

@singleton
@injectable
class CategoriesApiManager {
  ApiConsumer apiConsumer;

  static const String _baseUrl =
      "https://api.themoviedb.org/3/genre/movie/list";

  @factoryMethod
  CategoriesApiManager(this.apiConsumer);

  Future<CategoriesResponse>? getOnlineCategories() async {
    final json = await apiConsumer.get(_baseUrl);
    CategoriesResponse categoriesResponse = CategoriesResponse.fromJson(json);
    return categoriesResponse;
  }
}

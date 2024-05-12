import 'package:injectable/injectable.dart';
import 'package:movie_app/core/api/api_consumer.dart';
import 'package:movie_app/core/api/end_points.dart';
import 'package:movie_app/features/tabs/browse/data/models/categories_response.dart';

@singleton
@injectable
class CategoriesApiManager {
  ApiConsumer apiConsumer;

  @factoryMethod
  CategoriesApiManager(this.apiConsumer);

  Future<CategoriesResponse>? getOnlineCategories() async {
    final json = await apiConsumer.get("${EndPoints.baseUrl}list");
    CategoriesResponse categoriesResponse = CategoriesResponse.fromJson(json);
    return categoriesResponse;
  }
}

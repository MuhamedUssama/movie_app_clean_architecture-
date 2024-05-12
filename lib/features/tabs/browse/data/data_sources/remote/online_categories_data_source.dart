import 'package:movie_app/features/tabs/browse/domain/models/category_dto.dart';

abstract class OnlineCategoriesDataSource {
  Future<List<CategoryDto>?> getOnlineCategories();
}

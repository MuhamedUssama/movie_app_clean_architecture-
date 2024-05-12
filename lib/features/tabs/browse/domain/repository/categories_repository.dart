import '../models/category_dto.dart';

abstract class CategoriesRepository {
  Future<List<CategoryDto>?> getCategories();
}

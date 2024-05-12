import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/browse/domain/models/category_dto.dart';
import 'package:movie_app/features/tabs/browse/domain/repository/categories_repository.dart';

@injectable
class OnlineCategoriesUseCase {
  CategoriesRepository categoriesRepository;

  @factoryMethod
  OnlineCategoriesUseCase(this.categoriesRepository);

  Future<List<CategoryDto>?> invoke() async {
    final categories = await categoriesRepository.getCategories();
    return categories;
  }
}

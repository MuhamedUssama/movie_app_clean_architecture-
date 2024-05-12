import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/browse/data/data_sources/remote/online_categories_data_source.dart';
import 'package:movie_app/features/tabs/browse/domain/models/category_dto.dart';
import 'package:movie_app/features/tabs/browse/domain/repository/categories_repository.dart';

@Injectable(as: CategoriesRepository)
class CategoriesRepositoryImpl implements CategoriesRepository {
  OnlineCategoriesDataSource categoriesDataSource;

  @factoryMethod
  CategoriesRepositoryImpl(this.categoriesDataSource);

  @override
  Future<List<CategoryDto>?> getCategories() async {
    final categories = await categoriesDataSource.getOnlineCategories();
    return categories;
  }
}

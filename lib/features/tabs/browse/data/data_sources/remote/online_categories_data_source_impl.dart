import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/browse/data/api/categories_api_manager.dart';
import 'package:movie_app/features/tabs/browse/data/data_sources/remote/online_categories_data_source.dart';
import 'package:movie_app/features/tabs/browse/domain/models/category_dto.dart';

@Injectable(as: OnlineCategoriesDataSource)
class OnlineCatgoriesDataSourceImpl implements OnlineCategoriesDataSource {
  CategoriesApiManager apiManager;

  @factoryMethod
  OnlineCatgoriesDataSourceImpl(this.apiManager);

  @override
  Future<List<CategoryDto>?> getOnlineCategories() async {
    final response = await apiManager.getOnlineCategories();

    final onlineCategories =
        response?.genres?.map((category) => category.toCategory()).toList();

    return onlineCategories;
  }
}

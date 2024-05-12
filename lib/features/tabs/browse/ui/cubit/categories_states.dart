import 'package:movie_app/features/tabs/browse/domain/models/category_dto.dart';

abstract class CategoriesStates {}

class CategoriesLoadingState extends CategoriesStates {}

class CategoriesErrorState extends CategoriesStates {
  String? errorMessage;
  CategoriesErrorState(this.errorMessage);
}

class CategoriesSuccessState extends CategoriesStates {
  List<CategoryDto>? categories;
  CategoriesSuccessState(this.categories);
}

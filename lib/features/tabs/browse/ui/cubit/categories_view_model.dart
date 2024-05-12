import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/browse/domain/usecases/online_categories_usecase.dart';

import 'categories_states.dart';

@injectable
class CategoriesViewModel extends Cubit<CategoriesStates> {
  OnlineCategoriesUseCase onlineCategories;

  @factoryMethod
  CategoriesViewModel(this.onlineCategories) : super(CategoriesLoadingState());

  void getCategires() async {
    emit(CategoriesLoadingState());

    try {
      final categories = await onlineCategories.invoke();
      emit(CategoriesSuccessState(categories));
    } catch (error) {
      emit(CategoriesErrorState(error.toString()));
    }
  }
}

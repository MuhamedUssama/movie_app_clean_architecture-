import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/search/domain/usecases/search_usecase.dart';
import 'package:movie_app/features/tabs/search/ui/cubit/search_states.dart';

@injectable
class SearchViewModel extends Cubit<SearchStates> {
  SearchUseCase searchUseCase;
  TextEditingController searchQuery = TextEditingController();

  @factoryMethod
  SearchViewModel(this.searchUseCase) : super(SearchInitialState());

  void getSearchedMovies() async {
    emit(SearchInitialState());

    try {
      emit(SearchLoadingState());
      final movies = await searchUseCase.invoke(searchQuery.text);
      emit(SearchSuccessState(movies));
    } catch (error) {
      emit(SearchErrorState(error.toString()));
    }
  }
}

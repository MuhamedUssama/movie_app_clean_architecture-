import 'package:movie_app/features/tabs/search/domain/models/search_dto.dart';

abstract class SearchStates {}

class SearchInitialState extends SearchStates {}

class SearchLoadingState extends SearchStates {}

class SearchErrorState extends SearchStates {
  String? errorMessage;
  SearchErrorState(this.errorMessage);
}

class SearchSuccessState extends SearchStates {
  List<SearchDto>? searchResults;
  SearchSuccessState(this.searchResults);
}

import 'package:movie_app/features/tabs/search/domain/models/search_dto.dart';

abstract class SearchDataSource {
  Future<List<SearchDto>?> getSearchResults(String? query);
}

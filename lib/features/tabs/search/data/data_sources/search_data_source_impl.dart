import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/search/data/api/search_api_manager.dart';
import 'package:movie_app/features/tabs/search/data/data_sources/search_data_source.dart';
import 'package:movie_app/features/tabs/search/domain/models/search_dto.dart';

@Injectable(as: SearchDataSource)
class SearchDataSourceImpl implements SearchDataSource {
  SearchApimanager apimanager;

  @factoryMethod
  SearchDataSourceImpl(this.apimanager);

  @override
  Future<List<SearchDto>?> getSearchResults(String? query) async {
    final response = await apimanager.getSearchResponse(query);

    final searchResults = response?.results
        ?.map((searchResult) => searchResult.toSearchResult())
        .toList();

    return searchResults;
  }
}

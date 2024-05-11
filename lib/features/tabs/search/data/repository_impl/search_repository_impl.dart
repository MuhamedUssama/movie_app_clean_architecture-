import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/search/data/data_sources/search_data_source.dart';
import 'package:movie_app/features/tabs/search/domain/models/search_dto.dart';
import 'package:movie_app/features/tabs/search/domain/repository/search_repository.dart';

@Injectable(as: SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  SearchDataSource searchDataSource;

  @factoryMethod
  SearchRepositoryImpl(this.searchDataSource);

  @override
  Future<List<SearchDto>?> getSearchResults(String? query) {
    return searchDataSource.getSearchResults(query);
  }
}

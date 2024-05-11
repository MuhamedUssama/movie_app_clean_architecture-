import 'package:injectable/injectable.dart';
import 'package:movie_app/features/tabs/search/domain/models/search_dto.dart';
import 'package:movie_app/features/tabs/search/domain/repository/search_repository.dart';

@injectable
class SearchUseCase {
  SearchRepository searchRepository;

  @factoryMethod
  SearchUseCase(this.searchRepository);

  Future<List<SearchDto>?> invoke(String? query) {
    return searchRepository.getSearchResults(query);
  }
}

import 'package:injectable/injectable.dart';
import 'package:movie_app/core/api/api_consumer.dart';
import 'package:movie_app/features/tabs/search/data/model/search_response.dart';

@singleton
@injectable
class SearchApimanager {
  ApiConsumer apiConsumer;

  @factoryMethod
  SearchApimanager(this.apiConsumer);

  static const String _baseUrl = "https://api.themoviedb.org/3/search/movie";

  Future<SearchResponse>? getSearchResponse(String? query) async {
    final json =
        await apiConsumer.get(_baseUrl, queryParameters: {'query': query});

    SearchResponse searchResponse = SearchResponse.fromJson(json);

    return searchResponse;
  }
}

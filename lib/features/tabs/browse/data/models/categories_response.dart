import 'genres.dart';

class CategoriesResponse {
  List<Genres>? genres;

  CategoriesResponse({
    this.genres,
  });

  CategoriesResponse.fromJson(dynamic json) {
    if (json['genres'] != null) {
      genres = [];
      json['genres'].forEach((v) {
        genres?.add(Genres.fromJson(v));
      });
    }
  }
  CategoriesResponse copyWith({
    List<Genres>? genres,
  }) =>
      CategoriesResponse(
        genres: genres ?? this.genres,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (genres != null) {
      map['genres'] = genres?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

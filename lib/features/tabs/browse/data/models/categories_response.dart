import 'genres.dart';

class CategoriesResponses {
  List<Genres>? genres;

  CategoriesResponses({
    this.genres,
  });

  CategoriesResponses.fromJson(dynamic json) {
    if (json['genres'] != null) {
      genres = [];
      json['genres'].forEach((v) {
        genres?.add(Genres.fromJson(v));
      });
    }
  }
  CategoriesResponses copyWith({
    List<Genres>? genres,
  }) =>
      CategoriesResponses(
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

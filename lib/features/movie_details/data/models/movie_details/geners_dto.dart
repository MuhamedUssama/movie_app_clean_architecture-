import '../../../domain/models/movie_details/movie_details.dart';

class GenresDto {
  int? id;
  String? name;

  GenresDto({
    this.id,
    this.name,
  });

  GenresDto.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }

  GenresDto copyWith({
    int? id,
    String? name,
  }) =>
      GenresDto(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }

  Genres toGenres() {
    return Genres(
      id: id,
      name: name,
    );
  }
}

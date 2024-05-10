import '../../../domain/models/movie_details/movie_details.dart';

class SpokenLanguagesDto {
  String? englishName;
  String? iso6391;
  String? name;

  SpokenLanguagesDto({
    this.englishName,
    this.iso6391,
    this.name,
  });

  SpokenLanguagesDto.fromJson(dynamic json) {
    englishName = json['english_name'];
    iso6391 = json['iso_639_1'];
    name = json['name'];
  }

  SpokenLanguagesDto copyWith({
    String? englishName,
    String? iso6391,
    String? name,
  }) =>
      SpokenLanguagesDto(
        englishName: englishName ?? this.englishName,
        iso6391: iso6391 ?? this.iso6391,
        name: name ?? this.name,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['english_name'] = englishName;
    map['iso_639_1'] = iso6391;
    map['name'] = name;
    return map;
  }

  SpokenLanguages toSpokenLanguages() {
    return SpokenLanguages(
      englishName: englishName,
      iso6391: iso6391,
      name: name,
    );
  }
}

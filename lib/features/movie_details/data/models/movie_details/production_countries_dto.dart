import '../../../domain/models/movie_details/movie_details.dart';

class ProductionCountriesDto {
  String? iso31661;
  String? name;

  ProductionCountriesDto({
    this.iso31661,
    this.name,
  });

  ProductionCountriesDto.fromJson(dynamic json) {
    iso31661 = json['iso_3166_1'];
    name = json['name'];
  }

  ProductionCountriesDto copyWith({
    String? iso31661,
    String? name,
  }) =>
      ProductionCountriesDto(
        iso31661: iso31661 ?? this.iso31661,
        name: name ?? this.name,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['iso_3166_1'] = iso31661;
    map['name'] = name;
    return map;
  }

  ProductionCountries toProductionCountries() {
    return ProductionCountries(iso31661: iso31661, name: name);
  }
}

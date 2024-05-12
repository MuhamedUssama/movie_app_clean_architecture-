class CategoryDto {
  int? id;
  String? name;

  CategoryDto({
    this.id,
    this.name,
  });

  CategoryDto.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }

  CategoryDto copyWith({
    int? id,
    String? name,
  }) =>
      CategoryDto(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }
}

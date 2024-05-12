class CategoryDtos {
  int? id;
  String? name;

  CategoryDtos({
    this.id,
    this.name,
  });

  CategoryDtos.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }

  CategoryDtos copyWith({
    int? id,
    String? name,
  }) =>
      CategoryDtos(
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

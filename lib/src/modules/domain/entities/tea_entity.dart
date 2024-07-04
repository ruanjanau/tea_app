class TeaEntity {
  final int id;

  final String name;
  final bool isFavorite;
  final String image;
  final List<String> revenue;
  final String preparation;
  final String time;
  TeaEntity({
    required this.id,
    required this.name,
    required this.isFavorite,
    required this.image,
    required this.revenue,
    required this.preparation,
    required this.time,
  });

  TeaEntity copyWith({
    int? id,
    String? name,
    String? image,
    bool? isFavorite,
    List<String>? revenue,
    String? preparation,
    String? time,
  }) {
    return TeaEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      isFavorite: isFavorite ?? this.isFavorite,
      revenue: revenue ?? this.revenue,
      preparation: preparation ?? this.preparation,
      time: time ?? this.time,
    );
  }
}

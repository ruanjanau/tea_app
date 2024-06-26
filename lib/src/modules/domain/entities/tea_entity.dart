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
}

import '../../domain/entities/entities.dart';

class TeaModel {
  final int? id;

  final String? name;
  final bool? isFavorite;
  final String? image;
  final List<String>? revenue;
  final String? preparation;
  final String? time;
  TeaModel({
    this.id,
    this.name,
    this.isFavorite,
    this.image,
    this.revenue,
    this.preparation,
    this.time,
  });

  factory TeaModel.fromJson(dynamic map) {
    return TeaModel(
      id: map['id']?.toInt(),
      name: map['name'] ?? '',
      isFavorite: map['isFavorite'] ?? false,
      image: map['image'] ?? '',
      revenue: List<String>.from(map['revenue']),
      preparation: map['preparation'] ?? '',
      time: map['time'] ?? '',
    );
  }

  TeaEntity toEntity() {
    return TeaEntity(
      id: id ?? 0,
      name: name ?? '',
      isFavorite: isFavorite ?? false,
      image: image ?? '',
      revenue: revenue ?? [],
      preparation: preparation ?? '',
      time: time ?? '',
    );
  }
}

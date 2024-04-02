import '../../domain/entities/entities.dart';

class TeaModel {
  final int? id;
  final String? name;
  final String? image;
  final List<String>? revenue;
  final List<String>? preparation;
  final String? time;
  TeaModel({
    this.id,
    this.name,
    this.image,
    this.revenue,
    this.preparation,
    this.time,
  });

  factory TeaModel.fromJson(dynamic map) {
    return TeaModel(
      id: map['id']?.toInt(),
      name: map['name'] ?? '',
      image: map['image'] ?? '',
      revenue: List<String>.from(map['revenue']),
      preparation: List<String>.from(map['preparation']),
      time: map['time'] ?? '',
    );
  }

  TeaEntity toEntity() {
    return TeaEntity(
      id: id ?? 0,
      name: name ?? '',
      image: image ?? '',
      revenue: revenue ?? [],
      preparation: preparation ?? [],
      time: time ?? '',
    );
  }
}

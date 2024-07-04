import 'dart:async';

import 'package:dio/dio.dart';

import '../../dio/dio.dart';
import '../models/models.dart';

abstract class ITeaDatasource {
  FutureOr<List<TeaModel>> getTea();

  Future<void> updateFavoriteStatus(int id, bool isFavorite);
}

class TeaDatasource implements ITeaDatasource {
  final DioMockApi dioMockApi;

  TeaDatasource(this.dioMockApi);

  @override
  FutureOr<List<TeaModel>> getTea() async {
    final response = await dioMockApi.dioClient.get('${dioMockApi.baseUrl}tea');
    return (response.data as List).map((e) => TeaModel.fromJson(e)).toList();
  }

  @override
  Future<void> updateFavoriteStatus(int id, bool isFavorite) async {
    try {
      final response = await dioMockApi.dioClient.post(
        '${dioMockApi.baseUrl}tea/$id',
        data: {'isFavorite': isFavorite},
      );
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.data}');
    } on DioException catch (e) {
      print('Failed to update favorite status: $e');
      rethrow;
    }
  }
}

import 'dart:async';

import '../../dio/dio.dart';
import '../models/models.dart';

abstract class ITeaDatasource {
  FutureOr<List<TeaModel>> getTea();
}

class TeaDatasource implements ITeaDatasource {
  final DioMockApi dioMockApi;

  TeaDatasource(this.dioMockApi);

  @override
  FutureOr<List<TeaModel>> getTea() async {
    final response = await dioMockApi.dioClient.get('${dioMockApi.baseUrl}tea');

    return (response.data as List).map((e) => TeaModel.fromJson(e)).toList();
  }
}

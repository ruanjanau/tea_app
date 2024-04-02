import 'dart:async';

import 'package:tea_app/src/modules/data/models/models.dart';
import 'package:tea_app/src/modules/dio/dio_mockapi.dart';

abstract class ITeaDatasource {
  FutureOr<List<TeaModel>> getTea();
}

class TeaDatasource implements ITeaDatasource {
  final DioMockApi dioMockApi;

  TeaDatasource({required this.dioMockApi});

  @override
  FutureOr<List<TeaModel>> getTea() async {
    final response = await dioMockApi.dioClient.get(dioMockApi.baseUrl);

    return (response.data as List).map((e) => TeaModel.fromJson(e)).toList();
  }
}

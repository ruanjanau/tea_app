import 'package:flutter_modular/flutter_modular.dart';

import '../modules/data/datasources/datasources.dart';
import '../modules/data/repositories/repositories.dart';
import '../modules/dio/dio.dart';
import '../modules/domain/repositories/repositories.dart';
import '../modules/domain/usecases/usecases.dart';
import '../modules/presentation/views/tea_list/tea_list.dart';

class AppModuleBinds {
  static List<Bind> get binds => [
        ..._dataSources,
        ..._repository,
        ..._useCases,
        ..._teaViewModel,
      ];

  static List<Bind> get _dataSources => [
        Bind.lazySingleton<ITeaDatasource>(
          (di) => TeaDatasource(
            DioMockApi(),
          ),
        )
      ];
  static List<Bind> get _repository => [
        Bind.factory<ITeaRepository>(
          (di) => TeaRepository(
            di.get<ITeaDatasource>(),
          ),
        )
      ];

  static List<Bind> get _useCases => [
        Bind.factory<ITeaUsecase>(
          (di) => TeaUsecase(
            di.get<ITeaRepository>(),
          ),
        )
      ];

  static List<Bind> get _teaViewModel => [
        Bind.lazySingleton<TeaViewModel>(
          (di) => TeaViewModel(
            di.get<ITeaUsecase>(),
          ),
        ),
      ];
}

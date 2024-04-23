import 'package:flutter_modular/flutter_modular.dart';

import 'src/modules/data/datasources/tea_datasource.dart';
import 'src/modules/data/repositories/repositories.dart';
import 'src/modules/dio/dio_mockapi.dart';
import 'src/modules/domain/repositories/repositories.dart';
import 'src/modules/domain/usecases/usecases.dart';
import 'src/modules/presentation/views/tea_list/tea_list.dart';

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

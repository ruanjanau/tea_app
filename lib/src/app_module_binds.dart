import 'modules/data/datasources/tea_datasource.dart';
import 'modules/data/repositories/repositories.dart';
import 'modules/domain/repositories/repositories.dart';
import 'modules/domain/usecases/usecases.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModuleBinds {
  static List<Bind> get binds => [
        ..._dataSources,
        ..._repository,
        ..._useCases,
      ];

  static List<Bind> get _dataSources => [
        Bind.lazySingleton<ITeaDatasource>(
          (di) => TeaDatasource(
            dioMockApi: di(),
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
}

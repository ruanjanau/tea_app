import 'package:flutter_modular/flutter_modular.dart';

import 'app_module_binds.dart';
import 'app_module_routing.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => AppModuleBinds.binds;

  @override
  List<ModularRoute> get routes => AppModuleRouting.routes;
}

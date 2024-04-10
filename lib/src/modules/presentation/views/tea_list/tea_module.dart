import 'package:flutter_modular/flutter_modular.dart';

import 'tea_list_page.dart';

class TeaModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const TeaListPage()),
      ];
}

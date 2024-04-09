import 'package:flutter_modular/flutter_modular.dart';
import 'package:tea_app/src/modules/presentation/views/tea_list/tea_list_page.dart';

class TeaModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const TeaListPage());
  }
}

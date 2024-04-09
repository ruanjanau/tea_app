import 'package:flutter_modular/flutter_modular.dart';
import 'modules/presentation/views/login/login.dart';
import 'modules/presentation/views/onboarding/onboarding.dart';
import 'modules/presentation/views/splash/splash.dart';
import 'modules/presentation/views/tea_list/tea_list.dart';

import 'modules/presentation/views/home/home.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => const TeaSplash(),
    );
    r.child(
      '/first-onboarding',
      child: (context) => const FirstOnboarding(),
    );
    r.child(
      '/second-onboarding',
      child: (context) => const SecondOnboarding(),
    );
    r.child(
      '/login',
      child: (context) => const LoginPage(),
    );
    r.child(
      '/home',
      child: (context) => const HomePage(),
    );
    r.module('/tea-page', module: TeaModule());
  }
}

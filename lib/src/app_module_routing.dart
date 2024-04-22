import 'package:chazen/src/modules/presentation/views/favorites/teas_favorites.dart';

import 'core/navigator/navigator.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/presentation/navigation/navigation.dart';
import 'modules/presentation/views/home/home.dart';
import 'modules/presentation/views/login/login.dart';
import 'modules/presentation/views/onboarding/onboarding.dart';
import 'modules/presentation/views/splash/splash.dart';
import 'modules/presentation/views/tea_list/tea_list_page.dart';

abstract class AppModuleRouting {
  static BasePath splash = BasePath('/');
  static BasePath firstOnboarding = BasePath('/first-onboarding');
  static BasePath secondOnboarding = BasePath('/second-onboarding');
  static BasePath login = BasePath('/login');
  static BasePath home = BasePath('/home');
  static BasePath teaPage = BasePath('/tea-page');
  static BasePath navBar = BasePath('/nav-bar');
  static BasePath favorites = BasePath('/favorites');

  static List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const TeaSplash(),
        ),
        ChildRoute(
          firstOnboarding.path,
          child: (context, args) => const FirstOnboarding(),
        ),
        ChildRoute(
          secondOnboarding.path,
          child: (context, args) => const SecondOnboarding(),
        ),
        ChildRoute(
          login.path,
          child: (context, args) => const LoginPage(),
        ),
        ChildRoute(
          home.path,
          child: (context, args) => const HomePage(),
        ),
        ChildRoute(
          teaPage.path,
          child: (_, __) => const TeaListPage(),
        ),
        ChildRoute(
          navBar.path,
          child: (_, __) => const NavigatorBar(),
        ),
        ChildRoute(
          favorites.path,
          child: (_, __) => const TeasFavorites(),
        ),
      ];
}

import 'package:flutter/material.dart';
import 'package:tea_app/src/modules/presentation/views/tea_list/tea_list_page.dart';

import 'modules/presentation/views/home/home.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/tea-page/': (context) => const TeaListPage(),
      },
    );
  }
}

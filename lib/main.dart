import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'src/routes/routes.dart';

void main() {
  runApp(
    ModularApp(module: AppModule(), child: const AppWidget()),
  );
}

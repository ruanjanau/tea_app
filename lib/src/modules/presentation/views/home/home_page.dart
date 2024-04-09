import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text('AAAAAAAAAAIN ZE DA MANG'),
            ),
            ElevatedButton(
                onPressed: () {
                  Modular.to.navigate('/tea-page');
                },
                child: const Text('Clica ai fresco!!!'))
          ],
        ),
      ),
    );
  }
}

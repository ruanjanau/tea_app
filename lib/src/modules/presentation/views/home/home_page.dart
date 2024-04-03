import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          const Center(
            child: Text('AAAAAAAAAAIN ZE DA MANGA'),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/tea-page/');
              },
              child: const Text('Clica ai fresco!!!'))
        ],
      ),
    );
  }
}

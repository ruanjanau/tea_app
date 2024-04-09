import 'package:flutter/material.dart';

class TeaListPage extends StatelessWidget {
  const TeaListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tea'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: CircleAvatar(
              radius: 50,
              child: Text('P'),
            ),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {},
                child: const Text('Clica aí de novo, fresco!!!')),
          )
        ],
      ),
    );
  }
}

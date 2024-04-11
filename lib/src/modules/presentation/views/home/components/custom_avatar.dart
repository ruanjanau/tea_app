import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 60,
        ),
        const SizedBox(height: 10.0),
        Text(
          'Chá de manga',
          style: TextStyle(
            color: Colors.green[300],
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}

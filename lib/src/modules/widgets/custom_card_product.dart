import '../../core/icons/core_icons.dart';
import 'package:flutter/material.dart';

class CustomCardProduct extends StatelessWidget {
  const CustomCardProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xFF419F7D),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 4,
              blurRadius: 3,
              offset: const Offset(0, 3),
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 54,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Hortelã',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              '5 - 8 minutos',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                const Text(
                  'Ver Detalhes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(
                  CoreIcons.nextArrow,
                  size: 16,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomRevenue extends StatelessWidget {
  final String name;
  final String time;
  final List<String> ingredients;
  final String preparation;

  const CustomRevenue({
    super.key,
    required this.name,
    required this.time,
    required this.ingredients,
    required this.preparation,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 90),
          Text(
            name,
            style: const TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 58, 56, 56),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            time,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 8),
          const Divider(),
          const SizedBox(height: 8),
          const Text(
            'Ingredientes:',
            style: TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 58, 56, 56),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: ingredients.map((ingredient) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: Text(
                  ingredient,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 8),
          const Divider(),
          const SizedBox(height: 8),
          const Text(
            'Preparo:',
            style: TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 58, 56, 56),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            preparation,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }
}

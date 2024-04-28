import 'package:flutter/material.dart';

import '../icons/icons.dart';

class CustomCardProduct extends StatelessWidget {
  final bool isFavorite;
  final String title;
  final String time;
  final String image;

  const CustomCardProduct({
    Key? key,
    required this.title,
    required this.time,
    required this.image,
    required this.isFavorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: Stack(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xFF419F7D),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 4,
                  blurRadius: 1,
                  offset: const Offset(0, 1),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 56,
                      backgroundImage: NetworkImage(image),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 6.0),
                      Text(
                        time,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 6.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/detalhes');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
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
                              GlobalIcons.nextArrow,
                              size: 16,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: Icon(
              isFavorite == false
                  ? GlobalIcons.favoriting
                  : GlobalIcons.favoriteActive,
              color: isFavorite == false ? Colors.white : Colors.red,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}

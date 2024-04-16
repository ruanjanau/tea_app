import 'package:chazen/src/core/icons/core_icons.dart';
import 'package:chazen/src/modules/widgets/custom_card_product.dart';

import 'components/carousel_component.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CháZen',
          style: TextStyle(
            fontSize: 26.0,
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: const Color(0xFF419F7D),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  CoreIcons.star,
                  color: Colors.green[400],
                  size: 30,
                ),
                const SizedBox(width: 6.0),
                Text(
                  'Destaques',
                  style: TextStyle(
                    color: Colors.green[400],
                    fontSize: 22.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            const CarouselComponent(),
            const SizedBox(height: 40.0),
            Row(
              children: [
                Icon(
                  CoreIcons.forYou,
                  color: Colors.green[400],
                  size: 30,
                ),
                const SizedBox(width: 6.0),
                Text(
                  'Pra você',
                  style: TextStyle(
                    color: Colors.green[400],
                    fontSize: 22.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            const CustomCardProduct(),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Ver mais',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

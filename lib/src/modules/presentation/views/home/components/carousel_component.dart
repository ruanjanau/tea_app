import 'package:flutter/material.dart';

class CarouselComponent extends StatelessWidget {
  CarouselComponent({Key? key}) : super(key: key);

  final List<String> images = [
    'assets/images/promo1.jpeg',
    'assets/images/promo2.jpeg',
    'assets/images/promo3.jpeg',
    'assets/images/promo4.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          height: 300,
          width: 150,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            color: Colors.green[300],
          ),
        );
      },
    );
  }
}

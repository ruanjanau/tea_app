import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTitleApp extends StatelessWidget {
  const CustomTitleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SvgPicture.asset(
            'assets/svg/logo.svg',
            height: 200.0,
          ),
        ),
        Center(
          child: SvgPicture.asset(
            'assets/svg/titileapp.svg',
            height: 80.0,
          ),
        ),
      ],
    );
  }
}

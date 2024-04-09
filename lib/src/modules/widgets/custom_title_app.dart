import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ChazEN/src/modules/widgets/widgets.dart';

class CustomTitleApp extends StatelessWidget {
  const CustomTitleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SvgPicture.asset(
            'assets/svg/shazen.svg',
            height: 160.0,
          ),
        ),
        const Text(
          Strings.titleApp,
          style: TextStyle(
            fontSize: 34.0,
            color: Colors.white,
            fontWeight: FontWeight.w900,
            shadows: [
              Shadow(
                color: Colors.black,
                blurRadius: 3.0,
                offset: Offset(3.0, 3.5),
              )
            ],
          ),
        ),
      ],
    );
  }
}

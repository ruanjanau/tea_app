import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TeaSplash extends StatefulWidget {
  const TeaSplash({super.key});

  @override
  State<TeaSplash> createState() => _TeaSplashState();
}

class _TeaSplashState extends State<TeaSplash> {
  var width = 0.0;
  var heigth = 0.0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        width = 250.0;
        heigth = 250.0;
      });
      final nav = Navigator.of(context);
      await Future.delayed(const Duration(seconds: 4));
      nav.pushNamed(
        '/first-onboarding',
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 3),
          width: width,
          height: heigth,
          child: Hero(
            tag: 'splash',
            child: SvgPicture.asset('assets/svg/plant.svg'),
          ),
        ),
      ),
    );
  }
}

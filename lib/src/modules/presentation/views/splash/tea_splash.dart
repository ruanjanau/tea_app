import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class TeaSplash extends StatefulWidget {
  const TeaSplash({super.key});

  @override
  State<TeaSplash> createState() => _TeaSplashState();
}

class _TeaSplashState extends State<TeaSplash> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final nav = Navigator.of(context);
      await Future.delayed(
        const Duration(seconds: 4),
      );
      nav.pushNamed(
        '/first-onboarding',
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              'assets/svg/titileapp.svg',
              height: 80.0,
            ),
          ),
          const SizedBox(height: 80.0),
          LoadingAnimationWidget.hexagonDots(
            color: Colors.white,
            size: 50.0,
          ),
        ],
      ),
    );
  }
}

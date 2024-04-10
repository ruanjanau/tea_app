import 'package:flutter/material.dart';
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
          const Text(
            'ChaZen',
            style: TextStyle(
                color: Color(0xFF249A37),
                fontSize: 46.0,
                fontWeight: FontWeight.w900,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    blurRadius: 6.0,
                    offset: Offset(3.0, 3.5),
                  )
                ]),
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

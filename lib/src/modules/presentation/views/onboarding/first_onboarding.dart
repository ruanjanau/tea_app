import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/assets/assets.dart';
import '../../shared/strings/strings.dart';

class FirstOnboarding extends StatelessWidget {
  const FirstOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              GlobalStrings.titleOnboard1,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 22.0,
              ),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: SvgPicture.asset(
                GlobalAssets.onbo1,
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              GlobalStrings.infoOnboard1,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                Modular.to.navigate('/second-onboarding');
              },
              child: const Text('Próximo'),
            ),
          ],
        ),
      ),
    );
  }
}

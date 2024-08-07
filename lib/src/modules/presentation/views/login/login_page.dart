import 'package:flutter/material.dart';

import '../../shared/strings/strings.dart';
import '../../shared/components/components.dart';
import 'controller/login_cotroller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginCotroller loginCotroller = LoginCotroller();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomTitleApp(),
                const SizedBox(height: 20.0),
                CustomTextField(
                  icon: Icons.person,
                  controller: emailController,
                  text: 'Email',
                ),
                const SizedBox(height: 20.0),
                CustomTextField(
                  icon: Icons.remove_red_eye,
                  controller: passwordController,
                  text: 'Senha',
                ),
                const SizedBox(height: 8.0),
                const Padding(
                  padding: EdgeInsets.only(left: 120.0),
                  child: Text(
                    GlobalStrings.forgotPassword,
                    style: TextStyle(
                      color: Color.fromARGB(255, 59, 58, 58),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),
                CustomButton(
                  text: 'Entrar',
                  onPressed: () {
                    emailController.text.isEmpty ||
                            passwordController.text.isEmpty
                        ? ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Preencha todos os campos!'),
                            ),
                          )
                        : Navigator.pushNamed(context, '/nav-bar');
                  },
                  color: const Color.fromARGB(255, 59, 58, 58),
                ),
                const SizedBox(height: 110.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.privacy_tip_outlined,
                      color: Color.fromARGB(255, 59, 58, 58),
                    ),
                    Text(
                      GlobalStrings.privacyPolici,
                      style: TextStyle(
                        color: Color.fromARGB(255, 59, 58, 58),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

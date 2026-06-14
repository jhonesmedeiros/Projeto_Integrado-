import 'package:flutter/material.dart';

import '../core/routes/app_routes.dart';
import '../widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() =>
      _LoginScreenState();
}

class _LoginScreenState
    extends State<LoginScreen> {

  final emailController =
      TextEditingController();

  final passwordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: emailController,
              decoration:
                  const InputDecoration(
                labelText: "E-mail",
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller:
                  passwordController,
              obscureText: true,
              decoration:
                  const InputDecoration(
                labelText: "Senha",
              ),
            ),

            const SizedBox(height: 30),

            CustomButton(
              text: "Entrar",
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  AppRoutes.dashboard,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

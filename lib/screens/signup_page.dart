import 'package:flutter/material.dart';
import '../widgets/custom_widgets.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCE4EC),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),

      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [

            const SizedBox(height: 20),

            const Text(
              "Sign Up",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            inputFile(label: "Nombre"),
            inputFile(label: "Email"),
            inputFile(label: "Password", obscureText: true),

            const SizedBox(height: 20),

            buildButton(text: "Crear cuenta", onTap: () {}),
          ],
        ),
      ),
    );
  }
}
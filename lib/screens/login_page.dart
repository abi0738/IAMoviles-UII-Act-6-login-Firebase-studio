import 'package:flutter/material.dart';
import 'signup_page.dart';
import '../widgets/custom_widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              "Login",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            inputFile(label: "Email"),
            inputFile(label: "Password", obscureText: true),

            const SizedBox(height: 20),

            buildButton(text: "Login", onTap: () {}),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("¿No tienes cuenta?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const SignUpPage()),
                    );
                  },
                  child: const Text("Registrarse"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
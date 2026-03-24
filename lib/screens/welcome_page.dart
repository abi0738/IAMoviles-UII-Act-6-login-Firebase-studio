import 'package:flutter/material.dart';
import 'login_page.dart';
import 'signup_page.dart';
import '../widgets/custom_widgets.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCE4EC),

      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const SizedBox(height: 40),

            const Text(
              "DanceAshley",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Container(
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://raw.githubusercontent.com/abi0738/imagenes-/refs/heads/main/bailarina1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Aprende a bailar desde casa con los mejores estilos",
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 40),

            buildButton(
              text: "Login",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LoginPage()),
                );
              },
            ),

            const SizedBox(height: 15),

            buildButton(
              text: "Sign Up",
              isOutline: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SignUpPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
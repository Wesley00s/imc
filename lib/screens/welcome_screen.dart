import 'package:flutter/material.dart';
import 'package:imc/res/media.dart';
import 'package:imc/screens/widget/styled_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppMedia.logo,
              fit: BoxFit.cover,
              height: 120
            ),

            const SizedBox(height: 40),

            const Text(
              'Bem-vindo(a) ao nosso aplicativo de cálculo de índice de massa corporal!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 40),

            StyledButton(
              onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/home_screen'
                  );
              },
              text: 'Vamos iniciar',
            ),
          ],
        ),
      ),
    );
  }
}
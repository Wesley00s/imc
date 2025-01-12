import 'package:flutter/material.dart';
import 'package:imc/screens/widget/styled_button.dart';
import 'package:imc/screens/home_screen.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 150),
            Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
              width: 350,
              height: 350
            ),
            const Text(
              'Bem-vindo(a) ao nosso aplicativo de cálculo de índice de massa corporal!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: 350,
              child :
              StyledButton(
                onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/home_screen'
                    );
                }, text: 'Vamos iniciar',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
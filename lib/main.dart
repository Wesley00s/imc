import 'package:flutter/material.dart';
import 'package:imc/screens/home_screen.dart';
import 'package:imc/screens/result_screen.dart';
import 'package:imc/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora IMC',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/home_screen': (context) => const HomeScreen(),
        '/result_screen': (context) => const ResultScreen()
      },
    );
  }
}


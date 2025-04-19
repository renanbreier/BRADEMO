import 'package:flutter/material.dart';
import 'package:exec04/screens/home_screen.dart';

void main() => runApp(const Exercicio());

class Exercicio extends StatelessWidget {
  const Exercicio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.white),
            textStyle: WidgetStateProperty.all(
              const TextStyle(fontSize: 18, color: Colors.black),
            ),
            foregroundColor: WidgetStateProperty.all(Colors.black),
          ),
        ),
        dividerTheme: DividerThemeData(color: Colors.white),
      ),
      home: Home(),
    );
  }
}
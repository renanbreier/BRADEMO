import 'package:flutter/material.dart';

void main() => runApp(Exercicio());

class Exercicio extends StatelessWidget {
  const Exercicio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue,
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontSize: 35,
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
          )
        )
      ),
      home: ThemeDataApp(),
    );
  }
}

class ThemeDataApp extends StatelessWidget {
  const ThemeDataApp({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: Text("Exercício 02\nThemeData App", textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge),
      ),
    );
  }
}
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
          bodyLarge: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      home: ThemeDataApp(),
    );
  }
}

class ThemeDataApp extends StatelessWidget {
  ThemeDataApp({super.key});

  final ThemeData newTheme = ThemeData(
    scaffoldBackgroundColor: Colors.yellow,
    textTheme: TextTheme(
      bodyLarge: TextStyle(fontSize: 35, color: Colors.black, fontWeight: FontWeight.bold,)
    )
  );

  @override
  Widget build(BuildContext context) {
    return Theme (
      data: newTheme,
      child: Builder(
        builder: (context) => Scaffold(
          body: Center(
            child: Text("Exercício 03\nThemeData App", textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge),
            ),
          ),
        ),
      );
  }
}
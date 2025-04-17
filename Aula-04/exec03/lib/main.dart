import 'package:exec03/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Exercício 03',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home()
      );
  }
}
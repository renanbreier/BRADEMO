import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter & Dart!'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
          child: Center(
            child: Text(
              'Olá, professor!!',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Olá, Admin', style: TextStyle(fontSize: 30)),
            const SizedBox(height: 20),
            const Text('Seja bem-vindo!', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
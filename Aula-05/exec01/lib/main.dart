import 'package:flutter/material.dart';
import 'package:exec01/widgets/grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Exercício 01 - Albuns 2Pac',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(9.0),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            children: const [
              Grid(capa: 'lib/assets/imagem-01.jpg', nome: "All Eyez On Me", artista: '2pac'),
              Grid(capa: 'lib/assets/imagem-02.jpg', nome: "Strictly 4 My NIGGAZ", artista: '2pac'),
              Grid(capa: 'lib/assets/imagem-03.jpg', nome: "Greatest Hits", artista: '2pac'),
              Grid(capa: 'lib/assets/imagem-04.jpg', nome: "Pac's Life", artista: '2pac'),
              Grid(capa: 'lib/assets/imagem-05.jpg', nome: "Me Against The World", artista: '2pac'),
              Grid(capa: 'lib/assets/imagem-06.jpg', nome: "The 7 Day Theory", artista: '2pac'),
              Grid(capa: 'lib/assets/imagem-07.jpg', nome: "Live at the House of Blues", artista: '2pac'),
              Grid(capa: 'lib/assets/imagem-08.jpg', nome: "Better Dayz", artista: '2pac'),
            ],
          ),
        ),
      ),
    );
  }
}
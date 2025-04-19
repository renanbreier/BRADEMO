import 'package:flutter/material.dart';

class AlbumCoverSection extends StatelessWidget {
  const AlbumCoverSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20), // ajuste o valor como quiser
    child: Image.asset(
      image,
      width: 300,
      height: 300,
      fit: BoxFit.cover,
      ),
    );
  }
}
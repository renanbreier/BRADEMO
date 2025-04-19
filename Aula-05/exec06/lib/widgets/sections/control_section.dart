import 'package:flutter/material.dart';
import 'package:exec06/widgets/buttons/text_button.dart';
import 'package:exec06/widgets/buttons/favorite_button.dart';

class ControlsSection extends StatelessWidget {
  const ControlsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color? color = const Color.fromARGB(255, 7, 135, 0);
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(color: color, icon: Icons.person, label: 'Artista'),
          FavoriteButton(color: color),
          ButtonWithText(color: color, icon: Icons.share, label: 'Compartilhar'),
        ],
      ),
    );
  }
}
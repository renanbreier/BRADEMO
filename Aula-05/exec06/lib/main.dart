import 'package:flutter/material.dart';
import 'package:exec06/widgets/sections/cover_section.dart';
import 'package:exec06/widgets/sections/control_section.dart';
import 'package:exec06/widgets/sections/information_section.dart';
import 'package:exec06/widgets/sections/presentation_section.dart';

void main() => runApp(const Exercicio());

class Exercicio extends StatelessWidget {
  const Exercicio({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = "Informações do Album";

    return MaterialApp(
      title: appTitle,
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              AlbumCoverSection(image: "lib/assets/capa_333.jpeg"),
              PresentationSection(album: "333", artistName: "Matuê"),
              ControlsSection(),
              InformationSection(description:
                  "Também intitulado como 333 - Salve Todos, é o segundo álbum de estúdio do rapper brasileiro Matuê, " 
                  "lançado em 9 de setembro de 2024 pela gravadora 30PRAUM. O álbum conta com participações de Teto, Veigh e Brandão85, " 
                  "a produção foi carregada pelo próprio Matuê, junto com Brandão85 e Samuel Batista.\n"
                  "\nO álbum 333 de Matuê alcançou um desempenho histórico no Spotify Brasil, se tornando o álbum mais ouvido no país durante seu lançamento. "
                  "Nas primeiras 24 horas, o disco somou mais de 16 milhões de reproduções, isso fez com que 333 ultrapassasse o recorde anteriormente mantido por 'Escândalo Íntimo' "
                  "de Luísa Sonza e 'The Tortured Poets Department' de Taylor Swift."
              ),
            ],
          ),
        ),
      ),
    );
  }
}
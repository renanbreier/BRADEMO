import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

const red = Colors.red;
const green = Colors.green;
const blue = Colors.blue;
const big = TextStyle(fontSize: 30);
const explanationStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black87);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplos de Constraints',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exemplos de Constraints')),
      body: ListView.builder(
        itemCount: examples.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Exemplo ${index + 1}'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ExamplePage(
                  title: 'Exemplo ${index + 1}',
                  child: examples[index].child,
                  description: examples[index].description,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ExamplePage extends StatelessWidget {
  final String title;
  final Widget child;
  final String description;

  const ExamplePage({super.key, required this.title, required this.child, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Center(child: child)),
            const SizedBox(height: 24),
            Text(
              description,
              textAlign: TextAlign.center,
              style: explanationStyle,
            ),
          ],
        ),
      ),
    );
  }
}

class ExampleWidget {
  final Widget child;
  final String description;

  ExampleWidget(this.child, this.description);
}

final examples = <ExampleWidget>[
  ExampleWidget(
    Container(width: 100, height: 100, color: red),
    'Um Container com tamanho fixo de 100x100.'
  ),
  ExampleWidget(
    Align(alignment: Alignment.bottomRight, child: Container(width: 100, height: 100, color: red)),
    'Container alinhado ao canto inferior direito usando Align.'
  ),
  ExampleWidget(
    Container(width: double.infinity, height: double.infinity, color: red),
    'Container tenta ocupar todo o espaço possível (infinito).' 
  ),
  ExampleWidget(
    ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 100, minHeight: 100),
      child: Container(color: red),
    ),
    'Impondo um tamanho mínimo usando ConstrainedBox.'
  ),
  ExampleWidget(
    ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 100, maxHeight: 100),
      child: Container(width: 200, height: 200, color: red),
    ),
    'Limitando tamanho máximo mesmo que o Container peça mais.'
  ),
  ExampleWidget(
    Container(
      constraints: const BoxConstraints.tightFor(width: 100, height: 100),
      color: red,
    ),
    'Define tamanho exato com tightFor (sem margem para o layout crescer).' 
  ),
  ExampleWidget(
    Container(
      constraints: const BoxConstraints.expand(width: 100, height: 100),
      color: red,
    ),
    'Força o Container a expandir para o tamanho fornecido.'
  ),
  ExampleWidget(
    Container(color: red, child: const Text('Olá', style: big)),
    'Text herdando o espaço mínimo necessário, sem constraints adicionais.'
  ),
  ExampleWidget(
    SizedBox(width: 100, height: 100, child: Container(color: red)),
    'SizedBox força o tamanho fixo para seu filho.'
  ),
  ExampleWidget(
    FittedBox(child: Container(width: 200, height: 200, color: red)),
    'FittedBox redimensiona o filho para caber no espaço disponível.'
  ),
  ExampleWidget(
    FittedBox(child: Text('Texto grande demais', style: big)),
    'Texto grande é reduzido para caber no espaço com FittedBox.'
  ),
  ExampleWidget(
    IntrinsicWidth(
      child: Column(
        children: [
          Container(color: red, height: 50, width: 100),
          Container(color: green, height: 50, width: 200),
        ],
      ),
    ),
    'Garante que todos os filhos da coluna tenham a mesma largura mínima.'
  ),
  ExampleWidget(
    OverflowBox(
      maxWidth: double.infinity,
      maxHeight: double.infinity,
      child: Container(width: 400, height: 400, color: red),
    ),
    'OverflowBox permite que o filho ultrapasse os limites do pai.'
  ),
  ExampleWidget(
    SizedOverflowBox(
      size: const Size(100, 100),
      child: Container(width: 200, height: 50, color: red),
    ),
    'Combina tamanho fixo com overflow controlado do conteúdo.'
  ),
  ExampleWidget(
    UnconstrainedBox(child: Container(width: 200, height: 50, color: red)),
    'Remove as constraints do layout pai para o filho.'
  ),
  ExampleWidget(
    UnconstrainedBox(
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 100, minHeight: 100),
        child: Container(color: red),
      ),
    ),
    'Desfaz constraints externas e aplica novas internamente.'
  ),
  ExampleWidget(
    Row(
      children: [
        Container(width: 100, height: 100, color: red),
        Expanded(child: Container(height: 100, color: green)),
      ],
    ),
    'Expanded faz o segundo Container ocupar o espaço restante.'
  ),
  ExampleWidget(
    Column(
      children: [
        Container(height: 100, color: red),
        Expanded(child: Container(color: green)),
      ],
    ),
    'Similar ao exemplo anterior, mas com Column.'
  ),
  ExampleWidget(
    AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(color: red),
    ),
    'Mantém a proporção 16:9 ao redimensionar o Container.'
  ),
  ExampleWidget(
    FractionallySizedBox(
      widthFactor: 0.5,
      heightFactor: 0.3,
      child: Container(color: red),
    ),
    'Define a fração do tamanho do pai que o filho deve ocupar.'
  ),
  ExampleWidget(
    LimitedBox(
      maxHeight: 100,
      child: Container(height: 500, color: red),
    ),
    'Só aplica o limite se não houver constraints externas.'
  ),
  ExampleWidget(
    Container(
      alignment: Alignment.topLeft,
      child: Container(width: 50, height: 50, color: red),
    ),
    'Alinha o filho no canto superior esquerdo.'
  ),
  ExampleWidget(
    Container(
      alignment: Alignment.centerRight,
      child: Container(width: 50, height: 50, color: red),
    ),
    'Alinha o filho ao centro vertical e canto direito horizontal.'
  ),
  ExampleWidget(
    Baseline(
      baseline: 50,
      baselineType: TextBaseline.alphabetic,
      child: Text('Texto', style: big),
    ),
    'Posiciona o texto com base em sua linha de base.'
  ),
  ExampleWidget(
    Table(
      border: TableBorder.all(),
      children: const [
        TableRow(children: [Text('A'), Text('B')]),
        TableRow(children: [Text('C'), Text('D')]),
      ],
    ),
    'Table organiza widgets em linhas e colunas com bordas.'
  ),
  ExampleWidget(
    Wrap(
      children: List.generate(10, (i) => Container(margin: const EdgeInsets.all(4), color: red, width: 50, height: 50)),
    ),
    'Wrap faz os widgets quebrarem linha automaticamente.'
  ),
  ExampleWidget(
    Stack(
      children: [
        Container(width: 200, height: 200, color: red),
        Positioned(top: 20, left: 20, child: Container(width: 50, height: 50, color: green)),
      ],
    ),
    'Stack permite posicionamento absoluto de elementos sobrepostos.'
  ),
  ExampleWidget(
    Stack(
      alignment: Alignment.center,
      children: [
        Container(width: 200, height: 200, color: red),
        Container(width: 100, height: 100, color: green),
      ],
    ),
    'Widgets sobrepostos centralizados com Stack.'
  ),
  ExampleWidget(
    Container(
      color: blue,
      padding: const EdgeInsets.all(16),
      child: const Text('Exemplo 29', style: big),
    ),
    'Padding interno de 16 em todos os lados no Container.'
  ),
];

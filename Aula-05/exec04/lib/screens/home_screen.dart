import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Exercício 04",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _buildPortraitLayout(context);
          } else {
            return _buildLandscapeLayout(context);
          }
        },
      ),
    );
  }

  Widget _buildPortraitLayout(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Cheetah Coding",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => {},
                      child: Text("Button 1"),
                    ),
                    ElevatedButton(
                      onPressed: () => {},
                      child: Text("Button 2"),
                    ),
                  ],
                ),
                Text("Dart", style: Theme.of(context).textTheme.headlineLarge),
                Divider(),
                Text("JavaScript", style: Theme.of(context).textTheme.headlineLarge),
                Divider(),
                Text("PHP", style: Theme.of(context).textTheme.headlineLarge),
                Divider(),
                Text("C++", style: Theme.of(context).textTheme.headlineLarge),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLandscapeLayout(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Expanded(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Cheetah Coding", style: Theme.of(context).textTheme.headlineLarge),
                    ElevatedButton(
                      onPressed: () => {},
                      child: Text("Button 1")),
                    ElevatedButton(
                      onPressed: () => {},
                      child: Text("Button 2")),
                  ],
                ),
                VerticalDivider(color: Colors.white),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Dart", style: Theme.of(context).textTheme.headlineLarge),
                    Divider(),
                    Text("JavaScript", style: Theme.of(context).textTheme.headlineLarge),
                    Divider(),
                    Text("PHP", style: Theme.of(context).textTheme.headlineLarge),
                    Divider(),
                    Text("C++", style: Theme.of(context).textTheme.headlineLarge),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
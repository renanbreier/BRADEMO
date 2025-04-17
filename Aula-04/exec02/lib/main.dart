import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Exercício 2", style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.blue,
          ),
          backgroundColor: Colors.grey[200],
          floatingActionButton: SpeedDial(
            animatedIcon: AnimatedIcons.add_event,
            backgroundColor: Colors.blue,
            children: [
              SpeedDialChild(
                child: Icon(Icons.phone),
                onTap: () { },
              ),
              SpeedDialChild(
                child: Icon(Icons.message),
                onTap: () { },
              ),
              SpeedDialChild(
                child: Icon(Icons.email_outlined),
                onTap: () { },
              ),
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.add_a_photo),
                label: "Photo"
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_alert),
                label: "Notifications"
              ),
            ]
          ),
      ),
    );
  }
}

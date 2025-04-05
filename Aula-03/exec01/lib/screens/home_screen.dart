import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Início", style: TextStyle(color: Colors.white),),
          backgroundColor: Color.fromARGB(255, 17, 88, 147),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            SizedBox(
              width: 300,
              child: Image.network('https://i.imgur.com/lsj6Yiz.png'))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          backgroundColor: Color.fromARGB(255, 17, 88, 147),
          shape: CircleBorder(),
          child: Icon(Icons.account_circle, size: 40, color: Colors.white,),
          ),
      ),
    );
  }

}
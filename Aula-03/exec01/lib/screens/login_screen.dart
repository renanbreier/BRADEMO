import 'package:exec01/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Página de Login", style: TextStyle(color: Colors.white),),
          backgroundColor: Color.fromARGB(255, 17, 88, 147),
        ),
        body: LoginForm()
      );
  }

}
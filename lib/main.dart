import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blue[900],
      body: Column(children: [
        Text('Hello, welcome back!'),
        Text('Login to continue'),
      ]),
    ));
  }
}

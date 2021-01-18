import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow[100],
        body: SafeArea(
          child: Container(
            height: 100.0,
            width: 100.0,
            margin: EdgeInsets.only(top: 20.0, bottom: 50.0),
            padding: EdgeInsets.all(20.0),
            color: Colors.red,
            child: Text('child'),
          ),
        ),
      ),
    );
  }
}

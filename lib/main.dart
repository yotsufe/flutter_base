import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.red[900],
                child: Text('Container1'),
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.red[700],
                child: Text('Container2'),
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.red[500],
                child: Text('Container3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

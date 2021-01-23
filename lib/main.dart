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
        backgroundColor: Colors.yellow[300],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/purgatory.png'),
              ),
              Text(
                '煉獄 杏寿郎',
                style: TextStyle(
                  color: Colors.red[700],
                  fontFamily: 'Sawarabi',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '炎柱',
                style: TextStyle(
                  color: Colors.red[500],
                  fontFamily: 'Sawarabi',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4,
                ),
              ),
              SizedBox(
                height: 20.0,
                child: Divider(
                  color: Colors.red.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 24.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.red[300],
                    size: 20.0,
                  ),
                  title: Text(
                    '090 1234 5678',
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 24.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.red[300],
                    size: 20.0,
                  ),
                  title: Text(
                    'abcde12345@abcde.com',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

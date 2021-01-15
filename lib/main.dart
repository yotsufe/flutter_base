import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Flutter Base'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://i2.wp.com/www.oakridge.in/wp-content/uploads/2020/02/Sample-jpg-image-500kb.jpg'),
          ),
        ),
      ),
    ),
  );
}

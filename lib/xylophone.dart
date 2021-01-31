import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Xylophone'),
      ),
      body: XylophoneBody(),
    );
  }
}

class XylophoneBody extends StatefulWidget {
  @override
  _XylophoneBodyState createState() => _XylophoneBodyState();
}

class _XylophoneBodyState extends State<XylophoneBody> {
  int fileNum = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          setKey(Colors.red, 1),
          setKey(Colors.orange, 2),
          setKey(Colors.yellow, 3),
          setKey(Colors.green, 4),
          setKey(Colors.teal, 5),
          setKey(Colors.blue, 6),
          setKey(Colors.purple, 7),
        ],
      ),
    );
  }

  Expanded setKey(Color color, int fileNum) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          setState(() {
            playSound(fileNum);
          });
        },
        child: Text('Click here'),
      ),
    );
  }

  void playSound(int fileNum) {
    AudioCache player = AudioCache();
    player.play('note$fileNum.wav');
  }
}

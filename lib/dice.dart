import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Dice'),
      ),
      body: DiceBody(),
    );
  }
}

class DiceBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row();
  }
}

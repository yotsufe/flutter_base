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
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                print('onPressed Left');
              },
              child: Image.asset('images/dice1.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                print('onPressed Right');
              },
              child: Image.asset('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}

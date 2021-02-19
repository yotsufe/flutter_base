import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = 0xFFEB1555;
const cardColor = 0xFF1D1E33;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Color(cardColor),
                    cardChild: ChildCard(
                      gender: 'MALE',
                      genderIcon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(cardColor),
                    cardChild: ChildCard(
                      gender: 'FEMALE',
                      genderIcon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: Color(cardColor),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Color(cardColor),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(cardColor),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(bottomContainerColor),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

class ChildCard extends StatelessWidget {
  ChildCard({@required this.gender, @required this.genderIcon});

  final String gender;
  final IconData genderIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}

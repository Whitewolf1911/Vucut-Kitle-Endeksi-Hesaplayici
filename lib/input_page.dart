// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const double bottomContainerHeight = 60.0;
const Color activeCardColor = Colors.deepPurple;
const Color inactiveCardColor = Colors.lightBlue;

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColor;
  Color femaleCardColour = inactiveCardColor;

  Gender selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Vücut Kitle Endeksi Hesaplayıcısı'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                        color: selectedGender == Gender.male
                            ? activeCardColor
                            : inactiveCardColor,
                        cardChild: IconContent(
                          iconOfContent: FontAwesomeIcons.mars,
                          textValue: 'Erkek',
                        )),
                  )),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                        color: selectedGender == Gender.female
                            ? activeCardColor
                            : inactiveCardColor,
                        cardChild: IconContent(
                          iconOfContent: FontAwesomeIcons.venus,
                          textValue: 'Kadın',
                        )),
                  ))
                ],
              ),
            ),
            Expanded(
                child:
                    ReusableCard(color: activeCardColor, cardChild: Text(''))),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                        color: activeCardColor, cardChild: Text(''))),
                Expanded(
                    child: ReusableCard(
                  color: activeCardColor,
                  cardChild: Text(''),
                ))
              ],
            )),
            Container(
              color: Colors.purple,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}

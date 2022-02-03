// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import '/components/bottom_button.dart';
import '/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '/constants.dart';

class ResultsPage extends StatelessWidget {

  final String bmiResultNumber;
  final String bmiResult;
  final String bmiResultInfo;
  ResultsPage({required this.bmiResult, required this.bmiResultInfo, required this.bmiResultNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Vücut Kitle Endeksi Hesaplayıcısı'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    'Sonuçlarınız',
                    style: kTitleTextStyle,
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 5,
                child: Container(
                  child: ReusableCard(
                    onPress: () {},
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          bmiResult,
                          style: kResultTextStyle,
                        ),
                        Text(
                          bmiResultNumber,
                          style: kBMItextStyle,
                        ),
                        Text(
                          bmiResultInfo,
                          style: kBMIinfoStyle,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )),
            Expanded(
                child: BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              text: 'Tekrar Hesapla',
            ))
          ],
        ));
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.black))
      ),
      home: InputPage(),
    );
  }
}


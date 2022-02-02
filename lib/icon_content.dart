import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(fontSize: 35, color: Colors.black);

class IconContent extends StatelessWidget {
  final String textValue;
  final IconData iconOfContent;
  IconContent({required this.iconOfContent, required this.textValue});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconOfContent,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          textValue,
          style: labelTextStyle,
        )
      ],
    );
  }
}

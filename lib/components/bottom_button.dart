import 'package:flutter/material.dart';
import '/constants.dart';
class BottomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  BottomButton({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          text,
          style: kLargeButtonTextStyle,
        )),
        color: Colors.cyan,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 10),
      ),
    );
  }
}
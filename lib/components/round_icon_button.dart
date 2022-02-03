import 'package:flutter/material.dart';


class RoundIconButton extends StatelessWidget {
  VoidCallback onPressed;
  final IconData icon;
  RoundIconButton({required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Colors.pink,
      elevation: 2.0,
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      child: Icon(icon),
    );
  }
}

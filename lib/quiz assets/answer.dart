import 'dart:math';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _text;
  final VoidCallback increment;
  var buttonStyle = ElevatedButton.styleFrom();

  Answer(this._text, this.increment) {
    int colorsIndex = Random().nextInt(colors.length);
    buttonStyle = ElevatedButton.styleFrom(primary: colors[colorsIndex]);
  }

  List colors = [
    Colors.red,
    Colors.blue,
    Colors.orange,
    Colors.purpleAccent,
    Colors.teal,
    Colors.green,
    Colors.amber,
    Colors.cyan,
    Colors.lime,
    Colors.indigoAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        style: buttonStyle,
        child: Text(_text),
        onPressed: increment,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _text;
  final VoidCallback increment;
  final buttonStyle = ElevatedButton.styleFrom(primary: Colors.blue);

  Answer(this._text,this.increment);

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

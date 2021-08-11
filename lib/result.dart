import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int totalScore = 0;
  int questionsLength = 0;

  Result(this.totalScore, this.questionsLength);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'all done\nhere\'s how much I like you',
            style: TextStyle(fontSize: 30, color: Colors.blue),
            textAlign: TextAlign.center,
          ),
          Text(
            (totalScore / (questionsLength*10) * 100).toStringAsFixed(0) + '%',//////////////////
            style: TextStyle(fontSize: 50, color: Colors.red),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

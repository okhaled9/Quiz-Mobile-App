import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result(this.totalScore, this.questionsLength, this.reset);

  int totalScore = 0;
  int questionsLength = 0;
  final VoidCallback reset;

  double get finalScore {
    double finalDouble = (totalScore / (questionsLength * 10) * 100);
    return finalDouble;
  }

  TextStyle get answerStyle {
    TextStyle t = TextStyle();
    if (finalScore < 50)
      t = TextStyle(fontSize: 50, color: Colors.red);
    else if (finalScore >= 50 && finalScore < 70)
      t = TextStyle(fontSize: 50, color: Colors.orange);
    else if (finalScore >= 70 && finalScore < 90)
      t = TextStyle(fontSize: 50, color: Colors.green);
    else if (finalScore >= 90) t = TextStyle(fontSize: 50, color: Colors.blue);
    return t;
  }

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
            style: TextStyle(fontSize: 30, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          Text(
            finalScore.toStringAsFixed(0) + '%',
            style: answerStyle,
            textAlign: TextAlign.center,
          ),
          ElevatedButton(child: Text('return'), onPressed: reset)
        ],
      ),
    );
  }
}

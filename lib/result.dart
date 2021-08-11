import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int totalScore = 0;

  Result(this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'all done\nyour score is',
            style: TextStyle(fontSize: 30, color: Colors.blue),
            textAlign: TextAlign.center,
          ),
          Text(
            totalScore.toString(),
            style: TextStyle(fontSize: 50, color: Colors.red),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

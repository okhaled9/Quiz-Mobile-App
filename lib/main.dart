import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final List questions = [
    {
      'question': 'Favorite Color',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'purple', 'score': 10},
        {'text': 'Black', 'score': 1},
        {'text': 'Blue', 'score': 5}
      ]
    },
    {
      'question': 'Favorite Drink',
      'answers': [
        {'text': 'Cola', 'score': 10},
        {'text': 'Sprite', 'score': 1},
      ]
    },
    {
      'question': 'Favorite Place',
      'answers': [
        {'text': 'Cairo', 'score': 10},
        {'text': 'Alex', 'score': 2},
        {'text': 'East', 'score': 5},
        {'text': 'West', 'score': 5}
      ]
    },
  ];

  int index = 0;
  int totalScore = 0;

  void increment(int score) {
    totalScore += score;

    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
            width: double.infinity,
            child: Text(
              'Survey',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40),
            ),
          ),
        ),
        body: index < questions.length
            ? Quiz(questions, increment, index)
            : Result(totalScore),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import './quiz assets/answer.dart';
import './quiz assets/question.dart';

class Quiz extends StatelessWidget {
  List questions;
  final Function increment;
  int index = 0;

  Quiz(this.questions, this.increment, this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[index]['question']),
        ...questions[index]['answers'].map((ans) => Answer(ans['text'], () => increment(ans['score']))),
      ],
    );
  }
}

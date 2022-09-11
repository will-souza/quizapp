import 'package:flutter/material.dart';

import 'package:quizapp/question.dart';
import 'package:quizapp/answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map> questions;
  final int questionIndex;

  const Quiz({
    super.key,
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Question(
              questionText: questions[questionIndex]['questionText'],
            ),
            ...questions[questionIndex]['answers'].map((answer) {
              return Answer(
                buttonColor: Colors.blue,
                onPressed: () => answerQuestion(answer['score']),
                answerText: answer['text'],
              );
            }).toList(),
          ],
        )
      ],
    );
  }
}

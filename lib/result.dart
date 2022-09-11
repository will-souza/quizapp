import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:quizapp/answer.dart';

class Result extends StatelessWidget {
  final VoidCallback resetQuiz;
  final int totalScore;

  const Result({
    super.key,
    required this.resetQuiz,
    required this.totalScore,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Center(
        child: Text('You did it!'),
      ),
      const Spacer(),
      Answer(
        buttonColor: Colors.red,
        onPressed: resetQuiz,
        answerText: 'Reset Quiz',
      ),
    ]);
  }
}

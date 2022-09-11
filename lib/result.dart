import 'package:flutter/material.dart';

import 'package:quizapp/answer.dart';

class Result extends StatelessWidget {
  final VoidCallback resetQuiz;
  final int resultScore;

  const Result({
    super.key,
    required this.resetQuiz,
    required this.resultScore,
  });

  String get resultText {
    String text;

    if (resultScore <= 5) {
      text = 'You\'re weird! 🤢';
    } else if (resultScore <= 15) {
      text = 'You have peculiar tastes. 😨';
    } else if (resultScore <= 30) {
      text = 'You\'re cool bro!😎 ';
    } else {
      text = 'You\'re just a regular person! 🙂';
    }

    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Text(resultText),
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

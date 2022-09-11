import 'package:flutter/material.dart';

import 'package:quizapp/answer.dart';

class Result extends StatelessWidget {
  final VoidCallback resetQuiz;

  const Result({
    super.key,
    required this.resetQuiz,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Center(
        child: Text('You did it'),
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

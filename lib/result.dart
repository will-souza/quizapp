import 'package:flutter/material.dart';

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
      Text(
        resultText,
        style: const TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      const Spacer(),
      Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: ElevatedButton(
          onPressed: resetQuiz,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),
            minimumSize: MaterialStateProperty.all(
              const Size.fromHeight(50),
            ),
          ),
          child: const Text('Reset Quiz'),
        ),
      )
    ]);
  }
}

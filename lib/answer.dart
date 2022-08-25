import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Color buttonColor;
  final VoidCallback onPressed;
  final String answerText;
  final double marginBottom;

  const Answer({
    super.key,
    required this.buttonColor,
    required this.onPressed,
    required this.answerText,
    this.marginBottom = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: marginBottom),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          minimumSize: MaterialStateProperty.all(
            const Size.fromHeight(50),
          ),
        ),
        child: Text(answerText),
      ),
    );
  }
}

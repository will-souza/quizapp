import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Color buttonColor;
  final VoidCallback onPressed;

  const Answer({super.key, required this.buttonColor, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          minimumSize: MaterialStateProperty.all(
            const Size.fromHeight(50),
          ),
        ),
        child: const Text('Answer 1'),
      ),
    );
  }
}

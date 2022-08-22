import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = <String>[
    'What\'s your favorite color?',
    'What\'s your favorite animal',
    'What\'s your favorite movie',
    'What\'s your favorite food',
    'What\'s your favorite song',
  ];

  void _answerQuestion() {
    setState(() {
      if (_questionIndex + 1 < _questions.length) {
        _questionIndex = _questionIndex + 1;
      }
    });
  }

  void _resetQuestions() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz app'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Question(
                questionText: _questions[_questionIndex],
              ),
              ElevatedButton(
                onPressed: _answerQuestion,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size.fromHeight(40),
                ),
                child: const Text('Answer 1'),
              ),
              ElevatedButton(
                onPressed: _answerQuestion,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size.fromHeight(40),
                ),
                child: const Text('Answer 2'),
              ),
              ElevatedButton(
                onPressed: _answerQuestion,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size.fromHeight(40),
                ),
                child: const Text('Answer 3'),
              ),
              ElevatedButton(
                onPressed: _resetQuestions,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: const Size.fromHeight(40),
                ),
                child: const Text('Reset'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

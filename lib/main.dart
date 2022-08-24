import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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

  _answerQuestion() {
    setState(() {
      if (_questionIndex + 1 < _questions.length) {
        _questionIndex = _questionIndex + 1;
      }
    });
  }

  _resetQuestions() {
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
              Answer(
                buttonColor: Colors.blue,
                onPressed: _answerQuestion,
              ),
              const SizedBox(height: 10),
              Answer(
                buttonColor: Colors.blue,
                onPressed: _answerQuestion,
              ),
              const SizedBox(height: 10),
              Answer(
                buttonColor: Colors.blue,
                onPressed: _answerQuestion,
              ),
              const SizedBox(height: 10),
              const Spacer(),
              Answer(
                buttonColor: Colors.red,
                onPressed: _resetQuestions,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

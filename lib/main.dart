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
  final questions = <Map>[
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Blue', 'Red', 'Green', 'Other']
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': ['Dog', 'Cat', 'Mouse', 'Other']
    },
    {
      'questionText': 'What\'s your favorite movie?',
      'answers': ['Stolen', 'Con Air', 'The Rock', 'Other']
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': ['Pasta', 'Rice and Beans', 'Meat', 'Other']
    },
    {
      'questionText': 'What\'s your favorite subject?',
      'answers': ['Math', 'English', 'Science', 'Other']
    },
  ];

  var _questionIndex = 0;

  _answerQuestion() {
    setState(() {
      if (_questionIndex + 1 < questions.length) {
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
                questionText: questions[_questionIndex]['questionText'],
              ),
              ...questions[_questionIndex]['answers'].map((answer) {
                return Answer(
                  buttonColor: Colors.blue,
                  onPressed: _answerQuestion,
                  answerText: answer,
                );
              }).toList(),
              const Spacer(),
              Answer(
                buttonColor: Colors.red,
                onPressed: _resetQuestions,
                answerText: 'Reset Quiz',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

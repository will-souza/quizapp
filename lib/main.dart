import 'package:flutter/material.dart';

import 'package:quizapp/quiz.dart';
import 'package:quizapp/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = <Map>[
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

  _hasQuestions() {
    return _questionIndex < _questions.length;
  }

  _answerQuestion() {
    setState(() {
      if (_hasQuestions()) {
        _questionIndex = _questionIndex + 1;
      }
    });
  }

  _resetQuiz() {
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
            child: _hasQuestions()
                ? Quiz(
                    questions: _questions,
                    questionIndex: _questionIndex,
                    answerQuestion: _answerQuestion,
                  )
                : Result(
                    resetQuiz: _resetQuiz,
                  )),
      ),
    );
  }
}

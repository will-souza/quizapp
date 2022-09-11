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
      'answers': [
        {'text': 'Blue', 'score': 15},
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 5},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': [
        {'text': 'Dog', 'score': 15},
        {'text': 'Cat', 'score': 10},
        {'text': 'Mouse', 'score': 5},
        {'text': 'Lion', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite movie?',
      'answers': [
        {'text': 'Stolen', 'score': 15},
        {'text': 'Con Air', 'score': 10},
        {'text': 'The Rock', 'score': 5},
        {'text': 'Ghost Rider', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'Pasta', 'score': 15},
        {'text': 'Rice and Beans', 'score': 10},
        {'text': 'Meat', 'score': 5},
        {'text': 'Ice Cream', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite subject?',
      'answers': [
        {'text': 'Math', 'score': 15},
        {'text': 'English', 'score': 10},
        {'text': 'Science', 'score': 5},
        {'text': 'Geography', 'score': 1},
      ]
    },
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  _hasQuestions() {
    return _questionIndex < _questions.length;
  }

  _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      if (_hasQuestions()) {
        _questionIndex++;
      }
    });
  }

  _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
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
                    totalScore: _totalScore,
                  )),
      ),
    );
  }
}

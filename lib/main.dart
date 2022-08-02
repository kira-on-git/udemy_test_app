// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:udemy_test_app/quiz.dart';
import './quiz.dart';
import 'result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'blue', 'score': 2},
        {'text': 'white', 'score': 1},
        {'text': 'black', 'score': 5},
        {'text': 'red', 'score': 4}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'pig', 'score': 2},
        {'text': 'snake', 'score': 4},
        {'text': 'lion', 'score': 3},
        {'text': 'woolf', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite season?',
      'answers': [
        {'text': 'winter', 'score': 3},
        {'text': 'summer', 'score': 5},
        {'text': 'autumn', 'score': 4},
        {'text': 'spring', 'score': 2}
      ]
    },
    {
      'questionText': 'What\'s your favorite time of day?',
      'answers': [
        {'text': 'night', 'score': 5},
        {'text': 'morning', 'score': 4},
        {'text': 'day', 'score': 3},
        {'text': 'evening', 'score': 2}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore),
      ),
    );
  }
}

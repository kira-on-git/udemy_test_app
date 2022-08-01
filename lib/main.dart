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
  //const MyApp({Key? key}) : super(key: key);
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['blue', 'red', 'green', 'yellow']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['pig', 'snake', 'lion', 'woolf']
    },
    {
      'questionText': 'What\'s your favorite season?',
      'answers': ['winter', 'summer', 'autumn', 'spring']
    },
    {
      'questionText': 'What\'s your favorite time of day?',
      'answers': ['morning', 'day', 'evening', 'night']
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
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
          title: const Text('udemy_test_app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : const Result(),
      ),
    );
  }
}

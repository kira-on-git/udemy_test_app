// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //const MyApp({Key? key}) : super(key: key);
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
      print(questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('udemy_test_app'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(questions[questionIndex]),
              RaisedButton(onPressed: answerQuestion, child: Text('Answer 1')),
              RaisedButton(
                  onPressed: () => print('Answer 2 choosen!'),
                  child: Text('Answer 2')),
              RaisedButton(
                  onPressed: () {
                    //...
                    print('Answer 3 choosen!');
                  },
                  child: Text('Answer 3')),
            ],
          ),
        ),
      ),
    );
  }
}

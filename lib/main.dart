// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);
  void answerQuestion() {
    print('Answer choosen!');
  }

  @override
  Widget build(BuildContext context) {
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
              const Text('The question!'),
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

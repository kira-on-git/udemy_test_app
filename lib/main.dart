// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: const Text('udemy_test_app')),
          body: Column(
            children: [
              const Text('The question!'),
              const RaisedButton(child: Text('Answer 1'), onPressed: null),
              const RaisedButton(child: Text('Answer 2'), onPressed: null),
              const RaisedButton(child: Text('Answer 3'), onPressed: null),
            ],
          ),
        ));
  }
}

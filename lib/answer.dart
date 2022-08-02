import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 6.0, bottom: 6.0),
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: Colors.lightBlue,
        textColor: Colors.white,
        onPressed: selectHandler,
        child: Text(
          answerText,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 6.0, bottom: 6.0),
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: Colors.lightBlue,
        textColor: Colors.white,
        onPressed: selectHandler,
        child: Text(
          'Answer',
        ),
      ),
    );
  }
}

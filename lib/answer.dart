import 'package:flutter/material.dart';
class Answer extends StatelessWidget {

  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(0),
      child: RaisedButton(
                color: Colors.blue,
                onPressed: selectHandler,
                textColor: Colors.white,
                child: Text('Answer1'),
              ),
    );
  }
}
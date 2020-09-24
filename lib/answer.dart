import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answer;

  Answer(this.selectHandler, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
        child: RaisedButton(
          onPressed: selectHandler,
          color: Colors.grey[800],
          child: Text(
            answer,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

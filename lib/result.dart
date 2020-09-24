import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetHandler;

  String get resultPhrase {
    String resultText;
    if (score <= 8) {
      resultText = "You are awesome and innocent";
    } else if (score <= 12) {
      resultText = "You are pretty likeable";
    } else if (score <= 16) {
      resultText = "You are ___ strange?!";
    } else {
      resultText = "You are so bad";
    }
    return resultText;
  }

  Result(this.score, this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 100),
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          FlatButton(
            onPressed: resetHandler,
            color: Colors.grey[800],
            child: Text("Play Again"),
          )
        ],
      ),
    );
  }
}

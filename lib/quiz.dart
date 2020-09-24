import 'package:flutter/material.dart';
import 'package:first_flutter_app/question.dart';
import 'package:first_flutter_app/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]["questionText"]),
        ...(questions[questionIndex]["answers"] as List<Map>)
            .map((e) => Answer(() => answerQuestion(e["score"]), e["text"]))
            .toList(),
      ],
    );
  }
}

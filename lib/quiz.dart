import 'package:flutter/material.dart';
import 'package:flutter_application_1/question.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map> questions;
  final queston_index;
  final Function ans;

  Quiz(this.questions, this.queston_index, this.ans);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[queston_index]["question"]),
        ...(questions[queston_index]["answer"] as List<Map>)
            .map((answer) => Answer(()=>ans(answer['score']), answer["text"]))
            .toList()
      ],
    );
  }
}

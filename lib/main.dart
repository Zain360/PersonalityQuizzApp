import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/quiz.dart';
import 'package:flutter_application_1/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  List<Map> questions = [
    {
      "question": "which is your favourite animal",
      "answer": [
        {"text": "rabit", "score": 10},
        {"text": "horse", "score": 20},
        {"text": "cow", "score": 30},
        {"text": "lion", "score": 40},
      ]
    },
    {
      "question": "which is your favourite color",
      "answer": [
        {"text": "rabit", "score": 10},
        {"text": "horse", "score": 20},
        {"text": "cow", "score": 30},
        {"text": "lion", "score": 40},
      ]
    },
    {
      "question": "which is your favourite teacher",
      "answer": [
        {"text": "angela", "score": 10},
        {"text": "mosh", "score": 20},
        {"text": "harry", "score": 30},
        {"text": "wckd", "score": 40},
      ]
    }
  ];
  var question_index = 0;
  var _total_score = 0;
  void _reset() {
    setState(() {
      question_index = 0;
      _total_score = 0;
    });
  }

  void _ans(int score) {
    _total_score += score;
    setState(() {
      question_index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("Personality Quiz")),
          ),
          body: question_index < questions.length
              ? Quiz(questions, question_index, _ans)
              : Result(_total_score, _reset)),
    );
  }
}

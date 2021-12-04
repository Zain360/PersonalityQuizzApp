import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final void Function() Q;
  final String answer_text;
  Answer(this.Q,this.answer_text);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: ElevatedButton(
        child:  Text(answer_text),
        onPressed: Q,
      ),
    );
  }
}

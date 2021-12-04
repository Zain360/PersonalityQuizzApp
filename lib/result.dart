import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final result_score;
  final void Function() reset;
  Result(this.result_score, this.reset);
  String get resultphrase {
    String rp;
    if (result_score < 50) {
      rp = "You are so bad your score is $result_score";
    } else {
      rp = "You are so good your score is  $result_score";
    }
    return rp;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(resultphrase,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: reset,
              child: const Text(
                "Restart Quiz",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalResult;
  final Function resetQ;
  Result(this.finalResult, this.resetQ);

  String get resultPhrase {
    String resultText;
    if (finalResult <= 8) {
      resultText = 'You are awsome ans innocent';
    } else if (finalResult <= 12) {
      resultText = 'pretty likable';
    } else {
      resultText = 'you baaad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            resultPhrase,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        RaisedButton(
          onPressed: resetQ,
          child: Text('do it again!'),
        )
      ],
    );
  }
}

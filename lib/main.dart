import 'package:flutter/material.dart';
import 'package:flutter_demo/question.dart';
import './main.dart';
import './answer.dart';

void main() {
  runApp(DemoApp());
}

class DemoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DemoAppState();
  }
}

class _DemoAppState extends State<DemoApp> {
  var _questionIndex = 0;

  answerQs() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'q': 'Din favorit färg?',
        'a': ['Black', 'Red', 'White', 'Green']
      },
      {
        'q': 'Din favorit djur?',
        'a': ['Wolf', 'Bear', 'Hund', 'elak kääat']
      },
      {
        'q': 'Favorite instructor?',
        'a': ['Diyar', 'Diyar', 'Diyar', 'Diyar']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('demo app'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]['q'],
            ),
            ...(questions[_questionIndex]['a'] as List<String>)
                .map((answer) => Answer(answerQs, answer))
                .toList(),
          ],
        ),
      ),
    );
  }
}

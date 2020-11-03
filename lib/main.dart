import 'package:flutter/material.dart';
import 'package:flutter_demo/result.dart';
import './quiz.dart';

void main() {
  runApp(DemoApp());
}

class DemoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DemoAppState();
  }
}

class _DemoAppState extends State<DemoApp> {
  var _questionIndex = 0;
  final _questions = [
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

  answerQs() {
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex < _questions.length) {
      print(_questionIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('demo app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: answerQs,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}

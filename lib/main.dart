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
  final _questions = [
    {
      'q': 'Din favorit färg?',
      'a': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'White', 'score': 3},
      ]
    },
    {
      'q': 'Din favorit djur?',
      'a': [
        {'text': 'Chihuaua', 'score': 10},
        {'text': 'Hund', 'score': 5},
        {'text': 'Wholf', 'score': 3},
      ]
    },
    {
      'q': 'Favorite instructor?',
      'a': [
        {'text': 'Diyar', 'score': 10},
        {'text': 'Diyar', 'score': 5},
        {'text': 'Diyar', 'score': 3},
      ]
    },
  ];
  var _totalScore = 0;
  var _questionIndex = 0;

  void resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void answerQs(int score) {
    _totalScore += score;
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
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_demo/question.dart';
import './main.dart';

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

  myfunction() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['Din favorit färg?', 'Din favorit djur?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('demo app'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('answer 1'),
              onPressed: myfunction,
            ),
            RaisedButton(
              child: Text('answer 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('answer 3'),
              onPressed: null,
            )
          ],
        ),
      ),
    );
  }
}

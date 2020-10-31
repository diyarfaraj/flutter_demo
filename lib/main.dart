import 'package:flutter/material.dart';

void main() {
  runApp(DemoApp());
}

class DemoApp extends StatelessWidget {
  myfunction() {
    print('heheheh');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('demo app'),
        ),
        body: Column(
          children: <Widget>[
            Text('hejhej'),
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

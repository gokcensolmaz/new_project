import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is the capital City of Turkey?',
      'What year was the republic founded?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("First App"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text('Answer1'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text('Answer2'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text('Answer3'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text('Answer4'),
            ),
          ],
        ),
      ),
    );
  }
}

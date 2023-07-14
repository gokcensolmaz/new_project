import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
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
        body: Column(children: <Widget>[
          Text(questions[questionIndex]),
          ElevatedButton(
            onPressed: answerQuestion,
            child: const Text('Answer1'),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: const Text('Answer2'),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: const Text('Answer3'),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: const Text('Answer4'),
          ),
        ]),
      ),
    );
  }
}

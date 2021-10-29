import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': ['Black', 'Green', 'Red', 'White']
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': ['Cat', 'Rabbit', 'Snake', 'Lion']
      },
      {
        'questionText': 'Who\'s your favourite instructor?',
        'answers': ['Max', 'Max', 'Max', 'Max']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'] as String,
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestions, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State <MyApp> {
  int questonIndex = 0;

  void answerQuestions() {
    questonIndex = questonIndex + 1;
    print(questonIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(
              questions[questonIndex],
            ),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestions,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen'),
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () {
                //..
                print('Answer 3 chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(2),
      color: Colors.blue,
      child: ElevatedButton(
              child: Text('Answer 1'),
              onPressed: null,
            ),
    );
  }
}
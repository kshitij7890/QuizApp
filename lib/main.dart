import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override // decorator to make code cleaner
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite animal?',
      'What\'s your favourite color?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('The Ques'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: null,
            ),
          ],
        ), // commas at end -> proper formation of code tree
      ),
    );
  }
}

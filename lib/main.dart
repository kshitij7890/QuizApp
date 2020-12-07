import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      //to re-run build() when property is changed
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

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
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed:
                  _answerQuestion, //dont use parenthesis here(a pointer to the function will be passed)
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: _answerQuestion,
            ),
          ],
        ), // commas at end -> proper formation of code tree
      ),
    );
  }
}

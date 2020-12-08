import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Simplify : 3 + 6 x (5 + 4) ÷ 3 - 7',
      'answers': [
        {'text': '11', 'score': 0},
        {'text': '16', 'score': 0},
        {'text': '14', 'score': 1},
        {'text': '15', 'score': 0},
      ],
    },
    {
      'questionText': 'Solve : 24 + 4 ÷ 4',
      'answers': [
        {'text': '25', 'score': 1},
        {'text': '6', 'score': 0},
        {'text': '12', 'score': 0},
        {'text': '28', 'score': 0},
      ],
    },
    {
      'questionText': 'Solve : 200 – (96 ÷ 4)',
      'answers': [
        {'text': '105', 'score': 0},
        {'text': '175', 'score': 0},
        {'text': '176', 'score': 1},
        {'text': '122', 'score': 0},
      ],
    },
  ]; //we used maps here(key,value)
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      //to re-run build() when property is changed
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override // decorator to make code cleaner
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; //this value dont change later(works like const)
  Question(this.questionText); //constructor

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}

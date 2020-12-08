import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 3) {
      resultText = 'Score : 3/3 \n You are awesome !';
    } else if (resultScore == 2) {
      resultText = 'Score : 2/3 \n You can do better !';
    } else if (resultScore == 1) {
      resultText = 'Score : 1/3 \n Practise more !';
    } else {
      resultText = 'Score : 0/3 \n You need improvement !';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}

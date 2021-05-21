import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandeler;

  Result(this.totalScore, this.resetHandeler);

  String get resultPhrase {
    var phrase;
    if (totalScore <= 8) {
      phrase = 'you did it';
    } else if (totalScore <= 13) {
      phrase = 'you are OK';
    } else {
      phrase = 'you are bad';
    }
    return phrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center (
     child: Column(
       children: [
         Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
    ),
    FlatButton(onPressed: resetHandeler, child: Text('reset quiz',style: TextStyle(color: Colors.blue),))
       ],
     ),
    );
  }
}

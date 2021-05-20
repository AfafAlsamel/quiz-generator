import 'package:flutter/material.dart';
import 'package:quize_generator/Answer.dart';

import './Question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questionslist = [
      {
        'questionText': 'Whats\'s your favorit color?',
        'answers': ['pink', ' blue', 'Green']
      },
      {
        'questionText': 'Whats\'s your favorit animal?',
        'answers': ['cat', ' dog', 'bird']
      },
      {
        'questionText': 'Who\'s your favorit instructor?',
        'answers': ['Afaf', ' Afaf', 'Afaf']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questionslist[_questionIndex]['questionText']),
            ...(questionslist[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestions, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}

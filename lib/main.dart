import 'package:flutter/material.dart';
import 'package:quize_generator/Answer.dart';
import 'package:quize_generator/Quiz.dart';
import 'package:quize_generator/Result.dart';

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
  var _totalScore = 0;
  final _questionslist = const [
    {
      'questionText': 'Whats\'s your favorit color?',
      'answers': [
        {'text': 'pink', 'score': 5},
        {'text': ' blue', 'score': 3},
        {'text': 'Green', 'score': 4},
      ]
    },
    {
      'questionText': 'Whats\'s your favorit animal?',
      'answers': [
        {'text': 'cat', 'score': 5},
        {'text': ' dog', 'score': 3},
        {'text': 'bird', 'score': 4},
      ]
    },
    {
      'questionText': 'Who\'s your favorit instructor?',
      'answers': [
        {'text': 'Afaf', 'score': 5},
        {'text': 'Afaf', 'score': 5},
        {'text': 'Afaf', 'score': 5}
      ]
    },
  ];

  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questionslist.length
            ? Quiz(_questionslist, _questionIndex, _answerQuestions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

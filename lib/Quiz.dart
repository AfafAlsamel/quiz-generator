import 'package:flutter/material.dart';
import './Question.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questionslist;
  final int questionIndex;
  final Function answerQuestions;

  Quiz(this.questionslist, this.questionIndex, this.answerQuestions);
  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            Question(questionslist[questionIndex]['questionText']),
            ...(questionslist[questionIndex]['answers'] as List<Map<String,Object>>)
                .map((answer) {
              return Answer(() => answerQuestions(answer['score']), answer['text']);
            }).toList()
          ],
        );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState (){
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestions() {
    setState(() {
      questionIndex = questionIndex + 1 ;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var quastionslist = [
      'What\'s your name?',
      'Whats\'s your favorit color?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(quastionslist[questionIndex]),
            RaisedButton(
              child: Text('answer 1'),
              onPressed: answerQuestions,
            ),
            RaisedButton(
              child: Text('answer 2'),
              onPressed: answerQuestions,
            ),
            RaisedButton(
              child: Text('answer 3'),
              onPressed: answerQuestions,
            ),
          ],
        ),
      ),
    );
  }
}

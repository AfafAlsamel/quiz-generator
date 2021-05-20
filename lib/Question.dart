import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qusetionText;
  Question(this.qusetionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        qusetionText,
        style: TextStyle(fontSize: 32),
        textAlign: TextAlign.center,
      ),
    );
  }
}

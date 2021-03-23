import 'package:flutter/material.dart';
import 'package:mytriviaquiz/answer.dart';
import 'package:mytriviaquiz/question.dart';
import 'package:mytriviaquiz/quiz.dart';

// void main() => runApp(MyApp());

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var _questions = [
    {
      'questionText': 'What\'s your favorite color',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': ['Cat', 'Dog', 'Tiger']
    },
    {
      'questionText': 'What\'s your favorite car',
      'answers': ['MyVi', 'Viva', 'X70', 'X50']
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex >= 3) {
      setState(() {
        _questionIndex = 0;
      });
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          backgroundColor: Colors.brown,
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              child: Quiz(_questions, _questionIndex, _answerQuestion),
            ),
            Container(
              width: double.infinity,
              child: Quiz(_questions, _questionIndex, _answerQuestion),
            ),
          ],
        ),
      ),
    );
  }
}

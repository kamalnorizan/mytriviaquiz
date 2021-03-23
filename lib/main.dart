import 'package:flutter/material.dart';
import 'package:mytriviaquiz/answer.dart';
import 'package:mytriviaquiz/question.dart';

// void main() => runApp(MyApp());

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  var questions = [
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

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    if (questionIndex >= 3) {
      setState(() {
        questionIndex = 0;
      });
    }
    print(questionIndex);
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
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              Question(questionText: questions[questionIndex]['questionText']),
              Answer(answerQuestion),
            ],
          ),
        ),
      ),
    );
  }
}

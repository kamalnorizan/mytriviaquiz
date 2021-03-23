import 'package:flutter/material.dart';

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
    'What\'s your favorite color',
    'What\'s your favorite animal',
    'What\'s your favorite car',
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Center(
                child: Text(
                  questions[questionIndex],
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                answerQuestion();
              },
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () => answerQuestion(),
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () {
                answerQuestion();
              },
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}

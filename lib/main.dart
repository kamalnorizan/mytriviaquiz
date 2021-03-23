import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
            Text('The Question'),
            ElevatedButton(
              onPressed: () {
                print('Pressed Button 1');
              },
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Pressed Button 2');
              },
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Pressed Button 3');
              },
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;

  Answer(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: selectHandler,
            child: Text('Answer 1'),
          ),
        ),
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: selectHandler,
            child: Text('Answer 2'),
          ),
        ),
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: selectHandler,
            child: Text('Answer 3'),
          ),
        ),
      ],
    );
  }
}

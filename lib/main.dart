import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    var questions = [
      'What\'s your name?',
      'What\'s your favorite color?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizz App'),
        ),
        body: Column(
          children: [
            Text(
              questions[_questionIndex],
            ),
            RaisedButton(child: Text('Answer 1'), onPressed: _answerQuestion),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () {
                print('Answer 2 choosen!');
              },
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => print('Answer 3 choosen!'),
            ),
          ],
        ),
      ),
    );
  }
}

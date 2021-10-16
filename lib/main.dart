import 'package:flutter/material.dart';
import 'package:flutter_course_one_quiz_app/answer.dart';
import 'package:flutter_course_one_quiz_app/question.dart';
import 'package:flutter_course_one_quiz_app/quiz.dart';
import 'package:flutter_course_one_quiz_app/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('My First App')),
        body: const Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int questionIndex = 0;
  int score = 0;

  final List<Map<String, Object>> questions = const [
    {
      'question': 'What is your favourite color?',
      'answers': [
        {
          'text': 'Black',
          'score': 10,
        },
        {
          'text': 'Red',
          'score': 5,
        },
        {
          'text': 'Green',
          'score': 2,
        },
        {
          'text': 'White',
          'score': 1,
        },
      ]
    },
    {
      'question': 'What is your favourite animal?',
      'answers': [
        {
          'text': 'Elephant',
          'score': 10,
        },
        {
          'text': 'Snake',
          'score': 5,
        },
        {
          'text': 'Dolphin',
          'score': 2,
        },
        {
          'text': 'Whale',
          'score': 1,
        },
      ]
    }
  ];

  void answerQuestion(int point) {
    setState(() {
      if (questionIndex < questions.length) {
        questionIndex += 1;
      }

      score += point;
    });
  }

  void reset() {
    setState(() {
      questionIndex = 0;
      score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return questionIndex < questions.length
        ? Quiz(
            questionIndex: questionIndex,
            questions: questions,
            answerQuestion: answerQuestion,
          )
        : Result(
            score: score,
            reset: reset,
          );
  }
}

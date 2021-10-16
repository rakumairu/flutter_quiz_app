import 'package:flutter/material.dart';
import 'package:flutter_course_one_quiz_app/answer.dart';
import 'package:flutter_course_one_quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;

  const Quiz(
      {Key? key,
      required this.questionIndex,
      required this.questions,
      required this.answerQuestion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          text: questions[questionIndex]['question'].toString(),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return (Answer(
            text: answer['text'].toString(),
            press: () {
              answerQuestion(answer['score']);
            },
          ));
        }).toList()
      ],
    );
  }
}

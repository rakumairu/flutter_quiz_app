import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        left: 8,
        right: 8,
      ),
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 16,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

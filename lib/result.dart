import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback reset;

  const Result({Key? key, required this.score, required this.reset})
      : super(key: key);

  // Some kind of useMemo
  String get resultText {
    if (score < 5) {
      return 'LOL STUPID';
    } else if (score < 10) {
      return 'Not bad kid';
    } else {
      return 'NICE';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Text(
            resultText,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              score.toString(),
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: reset,
            child: const Text('RESET'),
          )
        ]),
      ),
    );
  }
}

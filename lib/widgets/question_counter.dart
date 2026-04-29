import 'package:flutter/material.dart';

class QuestionCounter extends StatelessWidget {
  final int currentQuestion;
  final int totalQuestions;
  const QuestionCounter({
    super.key,
    required this.currentQuestion,
    required this.totalQuestions,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Question', style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                '$currentQuestion',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: const Color(0xFF1c0790),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '/$totalQuestions',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
          const SizedBox(height: 15),
          LinearProgressIndicator(
            value: currentQuestion / totalQuestions,
            color: const Color(0xFF1c0790),
            backgroundColor: const Color(0xFFe1dfeb),
            borderRadius: BorderRadius.circular(8),
            minHeight: 5,
          ),
        ],
      ),
    );
  }
}

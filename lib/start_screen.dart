import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Color.fromARGB(122, 237, 229, 228),
          ),
          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(height: 80),
          const Text(
            'Learn Flutter The fun Way !',
            style: TextStyle(
              color: Color.fromARGB(255, 216, 222, 237),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
              // Start Screen Should Be Changed
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Color.fromARGB(247, 250, 239, 239),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quizz'),
          ),
        ],
      ),
    );
  }
}

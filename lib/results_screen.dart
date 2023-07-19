import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart ';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  List<Map<String, Object>> getSumaaryData() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add({'question_index': i, 
      'question': questions[i].text,
      'correct-answer': questions[i].answers[0],
       'user_answer' : chosenAnswers[i],
       

      },
      );
    }
    return summary;
  }

  final List<String> chosenAnswers;
// object is a very flexiblr type as everything in Dart is an object
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered x ques correctly'),
            const SizedBox(
              height: 30,
            ),
            const Text('List of Answers And Questions'),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: Text('Restart Quiz z'))
          ],
        ),
      ),
    );
  }
}

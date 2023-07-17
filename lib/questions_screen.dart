import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              )),
          const SizedBox(height: 30),
   

          AnswerButton(answerText: currentQuestion.answers[0], onTap: () {}),
         // const SizedBox(height: 10),
          AnswerButton(answerText: currentQuestion.answers[1], onTap: () {}),
          AnswerButton(answerText: currentQuestion.answers[2], onTap: () {}),
          AnswerButton(answerText: currentQuestion.answers[3], onTap: () {}),
        ],
      ),
    );
  }
}

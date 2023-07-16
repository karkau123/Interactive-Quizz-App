import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizzState();
  }
}

class _QuizzState extends State<Quiz> {
  Widget activeScreen = const StartScreen();
  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 33, 27, 93),
              Color.fromARGB(255, 153, 149, 203),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          )),
          child:  activeScreen,
        ),
      ),
    );
  }
}
// code updated
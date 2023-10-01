import 'package:flutter/material.dart';
import 'package:quizz_app/questions_screen.dart';
import 'package:quizz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
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
                Color.fromARGB(255, 123, 68, 181),
                Color.fromARGB(255, 89, 54, 138)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen != 'start-screen'
              ? const QuestionsScreen()
              : StartScreen(switchScreen),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quizz_app_flutter/data/questions.dart';
import 'package:quizz_app_flutter/questions_screen.dart';
import 'package:quizz_app_flutter/result_screen.dart';
import "package:quizz_app_flutter/start_screen.dart";

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  void restartHandler() {
    setState(() {
      activeScreen = StartScreen(switchScreenHandler);
      selectedAnswers = [];
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(
          chooseAnswers: selectedAnswers,
          onRestart: restartHandler,
        );
        selectedAnswers = [];
      });
    }
  }

  Widget? activeScreen;

  void switchScreenHandler() {
    setState(() {
      activeScreen = QuestionsScreen(onSelectAnswer: chooseAnswer);
    });
  }

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreenHandler);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.deepPurple, Colors.purple],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight)),
                child: activeScreen)));
  }
}

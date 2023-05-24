import 'package:flutter/material.dart';
import 'package:quizz_app_flutter/questions_screen.dart';
import "package:quizz_app_flutter/start_screen.dart";

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  void switchScreenHandler() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  Widget? activeScreen;

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

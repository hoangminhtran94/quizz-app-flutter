import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 270,
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton(
              onPressed: () => {},
              child: const Text(
                "Start Quiz",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}

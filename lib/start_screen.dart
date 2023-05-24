import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.onStart, {super.key});

  final void Function() onStart;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 270,
            color: const Color.fromARGB(150, 255, 255, 255),
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
          OutlinedButton.icon(
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              onPressed: onStart,
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                "Start Quiz",
              ))
        ],
      ),
    );
  }
}

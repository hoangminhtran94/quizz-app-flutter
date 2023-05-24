import 'package:flutter/material.dart';
import 'package:quizz_app_flutter/start_screen.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.deepPurple, Colors.purple],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)),
              child: const StartScreen()))));
}

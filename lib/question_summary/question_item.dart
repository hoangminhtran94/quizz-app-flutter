import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app_flutter/question_summary/questions_identifier.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({super.key, required this.itemData});
  final Map<String, Object> itemData;
  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData["user_answer"] == itemData["correct_answer"];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIndentifier(
              isCorrectAnswer: isCorrectAnswer,
              questionIndex: itemData["question_index"] as int),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData["question"] as String,
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  itemData["correct_answer"] as String,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 202, 171, 252)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  itemData["user_answer"] as String,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 181, 254, 246)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quizz_app_flutter/question_summary/question_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map((data) => QuestionItem(
                    itemData: data,
                  ))
              .toList(),
        ),
      ),
    );
  }
}

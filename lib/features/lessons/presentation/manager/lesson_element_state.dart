import 'package:flutter_riverpod/flutter_riverpod.dart';



class LessonElementState extends StateNotifier<bool> {
  LessonElementState() : super(false);

  // Example list of lessons. This can be initialized in the constructor if needed.
  final List<String> lessonsList = [
    "Portfolio Diversification",
    "Financial Literacy",
    "Financial Independence",
    "Risk Management",
    "Market Analysis",
    "Passive and Active\nInvesting",
    "Taxes and Investment",
    "Selecting Assets",
    "The Importance\nof Liquidity",
    "Behavioral Economics\nand Investment"
  ];

  void toggleChecked() {
    state = !state;
  }

  String getLesson(int index) {
    // Return the lesson text based on the index
    if (index >= 0 && index < lessonsList.length) {
      return lessonsList[index];
    }
    return "Lesson Not Found";
  }
}

final lessonElementProvider = StateNotifierProvider.family<LessonElementState, bool, int>((ref, index) {
  return LessonElementState();
});

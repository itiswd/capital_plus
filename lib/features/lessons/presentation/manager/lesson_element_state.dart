import 'package:flutter_riverpod/flutter_riverpod.dart';

class LessonElementState extends StateNotifier<bool> {
  LessonElementState() : super(false);

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

  /// Toggle the value of [state] between true and false.
  void toggleChecked() {
    state = !state;
  }

  String getLesson(int index) {
    return lessonsList[index];
  }
}

final lessonElementProvider =
    StateNotifierProvider.family<LessonElementState, bool, int>((ref, index) {
  return LessonElementState();
});

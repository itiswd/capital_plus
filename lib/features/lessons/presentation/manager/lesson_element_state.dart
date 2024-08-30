import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_consts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/service/shared_preferences_singleton.dart';
import 'package:capital_plus/features/lessons/presentation/manager/lessons_progress_details_notifier.dart';

class LessonElementState extends StateNotifier<bool> {
  LessonElementState(this.ref) : super(false) {
    _init();
  }
  int x = 0;
  final Ref ref;
  late List<bool> checkedList;

  static const List<String> lessonsList = [
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

  void _init() {
    checkedList =
        SharedPref.getBoolList(klistofCheckBox, length: lessonsList.length);
    // print("initial checkedList: $checkedList");
  }

  void toggleChecked(int index) {
    // print(checkedList);
    checkedList[index] = !checkedList[index];

    // print(checkedList);
    // print("******************************");
    SharedPref.setBoolList(klistofCheckBox, checkedList);

    ref.read(counterProvider.notifier).updateCounter();
    state = !state; // Trigger a rebuild
  }

  String getLesson(int index) => lessonsList[index];

  bool isLocked(int index) {
    return (index == 8 || index == 9) && !SharedPref.getBool(kIsPrimium);
  }

  Color getFilterColor(int index) =>
      isLocked(index) ? AppColor.grey : Colors.transparent;

  Color? getTextColor(int index) => isLocked(index) ? AppColor.grey : null;
}

final lessonElementProvider =
    StateNotifierProvider.family<LessonElementState, bool, int>((ref, index) {
  return LessonElementState(ref);
});

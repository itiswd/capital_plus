import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_consts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/service/shared_preferences_singleton.dart';



class LessonElementState extends StateNotifier<bool> {
  LessonElementState() : super(false) {
    _init();
  }

  late List<bool> checkedList;
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

  void _init() {
    checkedList = SharedPref.getBoolList(klistofCheckBox, length: 10);
  }
    int countTrueValues() {
  return checkedList.where((element) => element).length;
}   
  List<bool> getCheckedList() {
    return checkedList;
  }

  void toggleChecked(int index) {
    checkedList[index] = !checkedList[index];
    SharedPref.setBoolList(klistofCheckBox, checkedList);
    print(checkedList);
    state = !state; // Trigger a rebuild
  }

  String getLesson(int index) {
    return lessonsList[index];
  }

  bool isLocked(int index) {
    return (index == 8 || index == 9) && !SharedPref.getBool(kIsPrimium);
  }

  Color getFilterColor(int index) {
    return isLocked(index) ? AppColor.grey : Colors.transparent;
  }

  Color? getTextColor(int index) {
    return isLocked(index) ? AppColor.grey : null;
  }
}
final lessonElementProvider =
    StateNotifierProvider.family<LessonElementState, bool, int>((ref, index) {
  return LessonElementState();
});
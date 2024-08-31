import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_consts.dart';
import '../../../../core/service/hive_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/service/shared_preferences_singleton.dart';
import 'package:capital_plus/features/lessons/data/static/lessons_data_static.dart';
import 'package:capital_plus/features/lessons/presentation/manager/lessons_progress_details_notifier.dart';

class LessonElementState extends StateNotifier<bool> {
  LessonElementState(this.ref) : super(false);
  int x = 0;
  final Ref ref;

  void navigation(int index) {
    if (isLocked(index)) {
    } else {
      updateBoolInList(index);
      Get.toNamed(AppRouter.kLessonsDetailsView, arguments: index);
    }
  }

  Future<void> initializeCheckedList() async {
    Box<List<bool>> box = await openBox<List<bool>>(klistofCheckBox);
    checkedList = box.get(klistofCheckBox,
        defaultValue: List<bool>.filled(lessonsList.length, false))!;
    ref.read(counterProvider.notifier).getCheckBoxValues();
    debugPrint("checkedList: $checkedList");
  }

  Future<void> updateBoolInList(int index, {bool value = true}) async {
    Box<List<bool>> box = await openBox<List<bool>>(klistofCheckBox);
    List<bool> boolList = box.get(klistofCheckBox,
        defaultValue: List<bool>.filled(lessonsList.length, false))!;
    if (index >= 0 && index < boolList.length) {
      boolList[index] = value;
      await box.put(klistofCheckBox, boolList);
      ref.read(counterProvider.notifier).getCheckBoxValues();
      state = boolList[index];
      debugPrint("checkedList OF   updateBoolInList: $checkedList");
    } else {
      debugPrint('Index out of bounds');
    }
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

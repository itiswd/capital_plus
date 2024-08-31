import 'package:capital_plus/features/lessons/data/static/lessons_data_static.dart';
import 'package:hive/hive.dart';
import '../../../../core/constants/app_consts.dart';
import '../../../../core/service/hive_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);

  void updateCounter() async {
    state = trueCount;
  }

  Future<void> getCheckBoxValues() async {
    final Box<List<bool>> box = await openBox<List<bool>>(klistofCheckBox);
    checkedList = box.get(klistofCheckBox,
        defaultValue: List<bool>.filled(lessonsList.length, false))!;
    trueCount = checkedList.where((value) => value).length;
    updateCounter();
  }
}

final counterProvider = StateNotifierProvider<CounterNotifier, int>(
  (ref) => CounterNotifier(),
);

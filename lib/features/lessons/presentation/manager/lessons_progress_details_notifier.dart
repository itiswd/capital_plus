import '../../../../core/constants/app_consts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:capital_plus/core/service/shared_preferences_singleton.dart';

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0) {
    _init();
  }

  void _init() {
   
    
  
    state = countTrueValues();
  }

  void updateCounter( ) {
    state = countTrueValues();
  
    
  }
    int countTrueValues() {
    return SharedPref.getBoolList(klistofCheckBox).where((element) => element).length;
  }
}
final counterProvider = StateNotifierProvider<CounterNotifier, int>(
  (ref) => CounterNotifier(),
);
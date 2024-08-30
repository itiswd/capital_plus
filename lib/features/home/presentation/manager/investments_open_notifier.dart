import 'package:flutter_riverpod/flutter_riverpod.dart';

class InvestmentOpenNotifier extends StateNotifier<bool> {
  InvestmentOpenNotifier() : super(false);

  void toggle() {
    state = !state;
  }
}

// Provider to manage the open/close state for each investment item
final investmentOpenProvider = StateNotifierProvider.family<InvestmentOpenNotifier, bool, int>((ref, index) {
  return InvestmentOpenNotifier();
});

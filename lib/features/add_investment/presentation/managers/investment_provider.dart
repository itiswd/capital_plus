import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:capital_plus/features/add_investment/data/models/investment_model.dart';
import 'package:capital_plus/core/constants/app_consts.dart';

// Hive Box provider
final investmentBoxProvider = Provider<Box<InvestmentModel>>((ref) {
  return Hive.box<InvestmentModel>(kInvestmentHiveBox);
});

// Investment list provider
final investmentListProvider =
    StateNotifierProvider<InvestmentListNotifier, List<InvestmentModel>>((ref) {
  final investmentBox = ref.read(investmentBoxProvider);
  return InvestmentListNotifier(investmentBox);
});

//Max value
final maxValue = chartValues.values.reduce(
  (value, element) => value > element ? value : element,
);

class InvestmentListNotifier extends StateNotifier<List<InvestmentModel>> {
  final Box<InvestmentModel> investmentBox;

  InvestmentListNotifier(this.investmentBox)
      : super(investmentBox.values.toList());

  void addInvestment(InvestmentModel investment) {
    investmentBox.add(investment);
    state = investmentBox.values.toList(); // Update the state after adding
  }

  void refreshInvestments() {
    state = investmentBox.values.toList(); // Refresh the investment list
  }
}

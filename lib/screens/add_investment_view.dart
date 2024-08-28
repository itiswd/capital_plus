import 'package:capital_plus/widgets/add_investment/add_investment_body.dart';
import 'package:flutter/material.dart';

class AddInvestmentView extends StatelessWidget {
  const AddInvestmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AddInvestmentBody(),
    );
  }
}

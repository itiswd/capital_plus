import 'package:capital_plus/features/add_investment/data/models/investment_model.dart';
import 'package:capital_plus/features/home/presentation/views/widgets/investments_list.dart';
import 'package:hive/hive.dart';
import 'package:flutter/material.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';

class Investments extends StatelessWidget {
  const Investments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Hive.box<InvestmentModel>(kInvestmentHiveBox).values.toList().isEmpty
        ? Text(
            'You don\'t have any investments added yet.',
            textAlign: TextAlign.center,
            style: AppStyles.body2Regular.copyWith(
              color: AppColor.darkGrey,
            ),
          )
        : const InvestmentsList();
  }
}

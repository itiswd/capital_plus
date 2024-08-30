import 'package:hive/hive.dart';
import 'package:flutter/material.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/features/add_investment/data/models/investment_model.dart';
import 'package:capital_plus/features/home/presentation/views/widgets/investments_item.dart';

class Investments extends StatefulWidget {
  const Investments({
    super.key,
  });

  @override
  State<Investments> createState() => _InvestmentsState();
}

class _InvestmentsState extends State<Investments> {
  List<bool>? isOpen;
  Box<InvestmentModel> investmentBox =
      Hive.box<InvestmentModel>(kInvestmentHiveBox);
  late List investData = investmentBox.values.toList();
  @override
  Widget build(BuildContext context) {
    return investData.isEmpty
        ? Text(
            'You don\'t have any investments added yet.',
            textAlign: TextAlign.center,
            style: AppStyles.body2Regular.copyWith(
              color: AppColor.darkGrey,
            ),
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              investData.length,
              (index) {
                Future<Box<T>> openBox<T>(String boxName) async {
  if (!Hive.isBoxOpen(boxName)) {
    return await Hive.openBox<T>(boxName);
  } else {
    return Hive.box<T>(boxName);
  }
}
                return InvestmentsItem(
                  investment: investData[index],
                  isOpen: isOpen![index],
                  onTap: () {
                    setState(
                      () {
                        isOpen![index] = !isOpen![index];
                      },
                    );
                  },
                );
              },
            ),
          );
  }
}

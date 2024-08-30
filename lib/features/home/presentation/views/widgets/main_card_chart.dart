import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:capital_plus/features/add_investment/data/models/investment_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

class MainCardChart extends StatelessWidget {
  const MainCardChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var investmentBox = Hive.box<InvestmentModel>(kInvestmentHiveBox);
    late List investData = investmentBox.values.toList();
    //Max value
    final maxValue = chartValues.values.reduce(
      (value, element) => value > element ? value : element,
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: List.generate(
        7,
        (index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: investData.isEmpty
                    ? 44.0.h
                    : (chartValues.values.elementAt(index) / maxValue * 88),
                width: 16.0.w,
                decoration: BoxDecoration(
                  color: investData.isEmpty ? AppColor.darkGrey : AppColor.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4.0.r),
                    topRight: Radius.circular(4.0.r),
                  ),
                ),
              ),
              SizedBox(height: 8.0.h),
              Text(
                chartValues.keys.elementAt(index)[0],
                style: AppStyles.body2Regular.copyWith(
                  color: AppColor.grey,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

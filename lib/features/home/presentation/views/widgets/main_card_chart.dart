import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:capital_plus/features/add_investment/presentation/managers/investment_provider.dart';
import 'package:capital_plus/features/home/data/static/home_static_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainCardChart extends ConsumerWidget {
  const MainCardChart({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final investments = ref.watch(investmentListProvider);
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
                height: investments.isEmpty
                    ? 44.0.h
                    : (chartValues.values.elementAt(index) / maxValue * 88),
                width: 16.0.w,
                decoration: BoxDecoration(
                  color:
                      investments.isEmpty ? AppColor.darkGrey : AppColor.blue,
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

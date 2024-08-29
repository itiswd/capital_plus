import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainCardChart extends StatelessWidget {
  const MainCardChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //Max value
    final maxValue = chartValues.values.reduce(
      (value, element) => value > element ? value : element,
    );
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: List.generate(
          7,
          (index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height:
                      (chartValues.values.elementAt(index) / maxValue * 76).h,
                  width: 16.0.w,
                  decoration: BoxDecoration(
                    color: AppColor.blue,
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
      ),
    );
  }
}

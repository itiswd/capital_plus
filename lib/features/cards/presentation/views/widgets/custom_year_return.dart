import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomYearReturn extends StatelessWidget {
  const CustomYearReturn(
      {super.key,
      required this.yearName,
      required this.msft,
      required this.sp500});
  final String yearName;
  final String msft;
  final String sp500;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          yearName,
          style: AppStyles.header2.copyWith(
            color: AppColor.white,
            fontFamily: appFontOutfit,
          ),
        ),
        SizedBox(height: 12.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'MSFT',
                  style: AppStyles.body1Regular.copyWith(
                    color: AppColor.lightGrey,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  msft,
                  style: AppStyles.body1Medium.copyWith(
                    color: AppColor.lightGrey,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'S&P 500',
                  style: AppStyles.body1Regular.copyWith(
                    color: AppColor.lightGrey,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  sp500,
                  style: AppStyles.body1Medium.copyWith(
                    color: AppColor.lightGrey,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

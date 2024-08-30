import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:capital_plus/features/cards/presentation/views/widgets/custom_year_return.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrailingCard extends StatelessWidget {
  const TrailingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: AppColor.blue,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'jnjcbhucb jcbdhb jdbhdv jduyd jdydv jnjcbhucb jcbdhb jdbhdv jduyd jdydv jnjcbhucb jcbdhb jdbhdv jduyd jdydv jnjcbhucb jcbdhb jdbhdv jduyd jdydv jnjcbhucb jcbdhb jdbhdv jduyd jdydv jnjcbhucb jcbdhb jdbhdv jduyd jdydv jnjcbhucb jcbdhb jdbhdv jduyd jdydvv',
            style: AppStyles.body2Regular.copyWith(
              color: AppColor.lightGrey,
            ),
          ),
          SizedBox(height: 12.h),
          const CustomYearReturn(
            yearName: '1-Year Return',
            msft: '+29.17%',
            sp500: '+29.17%',
          ),
          SizedBox(height: 12.h),
          const CustomYearReturn(
            yearName: '1-Year Return',
            msft: '+29.17%',
            sp500: '+29.17%',
          ),
          SizedBox(height: 12.h),
          const CustomYearReturn(
            yearName: '1-Year Return',
            msft: '+29.17%',
            sp500: '+29.17%',
          ),
        ],
      ),
    );
  }
}

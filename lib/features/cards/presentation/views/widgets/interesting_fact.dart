import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InterestingFact extends StatelessWidget {
  const InterestingFact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: AppColor.blueAccent,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Company History:',
            style: AppStyles.header1.copyWith(
              color: AppColor.blue,
              fontFamily: appFontOutfit,
            ),
          ),
          SizedBox(height: 12.h),
          const Text(
              'dkdnjd dkndj jdnbdhbd dnjdbh djidg djbdh djbdh dhdyhd jidghd  djbyd  dkdnjd dkndj jdnbdhbd dnjdbh djidg djbdh djbdh dhdyhd jidghd  djbyd dkdnjd dkndj jdnbdhbd dnjdbh djidg djbdh djbdh dhdyhd jidghd  djbyddkdnjd dkndj jdnbdhbd dnjdbh djidg djbdh djbdh dhdyhd jidghd  djbyd'),
        ],
      ),
    );
  }
}
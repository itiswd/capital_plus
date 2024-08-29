import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_router.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:capital_plus/core/widgets/main_custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class VocabularyLockedElement extends StatelessWidget {
  final int index;
  const VocabularyLockedElement({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.0.h),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppColor.grey,
          borderRadius: BorderRadius.circular(24.0.r),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  vocabulary['title']![index] ==
                          'P/E Ratio\n(Price-to-\nEarnings Ratio)'
                      ? 'P/E Ratio (Price-\nto-Earnings Ratio)'
                      : vocabulary['title']![index] ==
                              'Advance Taxes\n(Capital\nGains Tax)'
                          ? 'Advance Taxes\n(Capital Gains Tax)'
                          : vocabulary['title']![index],
                  style: AppStyles.header2.copyWith(
                    fontSize: 19.0.sp,
                    color: AppColor.darkGrey,
                    fontFamily: 'Outfit',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.0.w,
                    vertical: 4.0.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    border: Border.all(
                      width: 1,
                      color: AppColor.blueAccent,
                    ),
                    borderRadius: BorderRadius.circular(24.0.r),
                  ),
                  child: Center(
                    child: Text('PRO',
                        textAlign: TextAlign.right,
                        style: AppStyles.body2Regular),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.0.h),
            MainButton(
              onTap: () => Get.toNamed(AppRouter.kPremiumView),
              text: 'Buy Premium \$0,99',
              color: AppColor.lightGreenAccent,
            )
          ],
        ),
      ),
    );
  }
}
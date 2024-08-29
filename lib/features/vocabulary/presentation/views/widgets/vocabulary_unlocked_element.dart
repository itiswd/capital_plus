import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VocabularyUnlockedElement extends StatelessWidget {
  final int index;
  const VocabularyUnlockedElement({
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
          color: AppColor.lightGrey,
          borderRadius: BorderRadius.circular(24.0.r),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  vocabulary['title']![index],
                  style: AppStyles.header2.copyWith(
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
                    child: Text(
                      vocabulary['code']![index],
                      textAlign: TextAlign.right,
                      style: AppStyles.body2Regular.copyWith(
                        fontFamily: '',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.0.h),
            Text(
              vocabulary['desc']![index],
              style: AppStyles.body2Regular,
            ),
          ],
        ),
      ),
    );
  }
}

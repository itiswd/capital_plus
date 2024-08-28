import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/utils/app_router.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg.dart';

class MainCardHeader extends StatelessWidget {
  const MainCardHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //All categories and amount
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'All categories',
                  style: AppStyles.body2Regular.copyWith(
                    color: AppColor.grey,
                  ),
                ),
                SizedBox(width: 4.0.w),
                SvgPicture.asset(
                  width: 12.w,
                  height: 12.h,
                  Assets.iconsButtonOpen,
                )
              ],
            ),
            SizedBox(height: 12.0.h),
            Row(
              children: [
                Text(
                  '\$',
                  style: AppStyles.header1.copyWith(
                    color: AppColor.white,
                    fontFamily: 'Outfit',
                  ),
                ),
                SizedBox(width: 8.0.w),
                Text(
                  '15000',
                  style: AppStyles.header1.copyWith(
                    color: AppColor.white,
                    fontFamily: 'Outfit',
                  ),
                ),
              ],
            )
          ],
        ),
        //Add button
        GestureDetector(
          onTap: () {
            Get.toNamed(AppRouter.kAddInvestmentView);
          },
          child: Container(
            width: 44.0,
            height: 44.0,
            decoration: BoxDecoration(
              color: AppColor.lightGreenAccent,
              borderRadius: BorderRadius.circular(80.0.r),
            ),
            child: const Icon(
              Icons.add,
              size: 28,
            ),
          ),
        )
      ],
    );
  }
}

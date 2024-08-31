import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:capital_plus/features/premium/data/static/premium_static_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PremiumCard extends StatelessWidget {
  final int index;
  const PremiumCard(
    this.index, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: kVerticalPadding),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppColor.lightGrey,
          borderRadius: BorderRadius.circular(24.0.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.iconsOpenLock,
            ),
            SizedBox(height: 12.0.h),
            Text(
              premiumList[index],
              textAlign: TextAlign.center,
              style: AppStyles.body1Regular.copyWith(
                color: AppColor.darkGrey,
              ),
            )
          ],
        ),
      ),
    );
  }
}

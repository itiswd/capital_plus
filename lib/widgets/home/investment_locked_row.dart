import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class InvestmentLockedRow extends StatelessWidget {
  const InvestmentLockedRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Investment user text',
          style: AppStyles.body2Regular,
        ),
        SvgPicture.asset(
          width: 15.24.w,
          height: 20.0.h,
          Assets.iconsIcRoundLock,
        ),
      ],
    );
  }
}

import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg.dart';

class PremiumAppBar extends StatelessWidget {
  const PremiumAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: SvgPicture.asset(
            width: 24.0.w,
            Assets.iconsArrowLeft,
          ),
        ),
        SizedBox(width: 12.0.w),
        Text(
          'Premium Benefits',
          style: AppStyles.header2.copyWith(
            fontFamily: 'Outfit',
          ),
        ),
      ],
    );
  }
}

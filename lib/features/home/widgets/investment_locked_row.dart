import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class InvestmentLockedRow extends StatelessWidget {
  final String text;
  final bool visible;
  const InvestmentLockedRow({
    super.key,
    required this.text,
    required this.visible,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 22.0.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: AppStyles.body2Regular.copyWith(
              color: visible == true ? AppColor.black : AppColor.darkGrey,
            ),
          ),
          Visibility(
            visible: !visible,
            child: SvgPicture.asset(
              width: 15.24.w,
              height: 20.0.h,
              Assets.iconsLock,
            ),
          )
        ],
      ),
    );
  }
}

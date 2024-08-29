import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';

class CardsViewAppBar extends StatelessWidget {
  const CardsViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: kHorizontalPadding, vertical: 20.h),
      height: 150.h,
      color: AppColor.blueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Find Out More!',
                style: AppStyles.header1.copyWith(color: AppColor.white),
              ),
              SvgPicture.asset(Assets.iconsSearch),
            ],
          ),
          Text(
            'About companies and their stocks',
            style: AppStyles.body1Regular.copyWith(
              color: AppColor.white.withOpacity(0.5),
            ),
          )
        ],
      ),
    );
  }
}

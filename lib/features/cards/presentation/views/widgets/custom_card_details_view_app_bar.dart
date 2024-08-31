import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CustomCardDetailsViewAppBar extends StatelessWidget {
  const CustomCardDetailsViewAppBar(
      {super.key, required this.appBarTitle, required this.appBarTrailingLogo});
  final String appBarTitle;
  final String appBarTrailingLogo;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Row(
        children: [
          SizedBox(height: 74.h),
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: SvgPicture.asset(
              Assets.iconsArrowLeftWhite,
            ),
          ),
          SizedBox(width: 12.w),
          SizedBox(
            width: 200.w,
            child: Text(
              appBarTitle,
              style: AppStyles.header2.copyWith(
                color: AppColor.white,
                fontFamily: appFontOutfit,
              ),
            ),
          ),
          const Spacer(),
          Image.asset(appBarTrailingLogo)
        ],
      ),
    );
  }
}

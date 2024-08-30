import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:capital_plus/features/cards/data/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomCardItem extends StatelessWidget {
  const CustomCardItem({super.key, required this.card});
  final CardModel card;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
            horizontal: kHorizontalPadding, vertical: 16.h),
        decoration: BoxDecoration(
          color: AppColor.lightGrey,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  card.logo,
                  fit: BoxFit.fill,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mkt Cap',
                      style: AppStyles.body2Medium.copyWith(
                        color: AppColor.darkBlue,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      card.assetsNum,
                      style: AppStyles.body2Medium.copyWith(
                        color: AppColor.blueAccent,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    card.name,
                    style: AppStyles.header2.copyWith(
                      fontFamily: appFontOutfit,
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                SvgPicture.asset(
                  Assets.iconsFluentIosArrow24Filled,
                  height: 20.h,
                  color: AppColor.blueAccent,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
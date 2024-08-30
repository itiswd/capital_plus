import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:capital_plus/features/cards/data/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CardDetailsViewBody extends StatelessWidget {
  const CardDetailsViewBody({super.key, required this.card});
  final CardModel card;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: AppColor.blueAccent,
          height: (Get.height / 2).h,
        ),
        SafeArea(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              CustomCardDetailsViewAppBar(
                appBarTitle: card.name,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CustomCardDetailsViewAppBar extends StatelessWidget {
  const CustomCardDetailsViewAppBar({super.key, required this.appBarTitle});
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: SvgPicture.asset(
                  Assets.arrowLeft,
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
            ],
          ),
          SvgPicture.asset(Assets.iconsSearch)
        ],
      ),
    );
  }
}

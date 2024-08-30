import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:capital_plus/features/cards/presentation/views/widgets/custom_card_items_list.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardsViewBody extends StatelessWidget {
  const CardsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: AppColor.blueAccent,
          toolbarHeight: 150.h,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: SvgPicture.asset(Assets.iconsSearch),
            ),
          ],
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Text(
                'Find Out More!',
                style: AppStyles.header1.copyWith(
                  color: AppColor.white,
                  fontFamily: appFontOutfit,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'About companies and their stocks',
                style: AppStyles.body2Regular.copyWith(
                  color: AppColor.white.withOpacity(0.8),
                ),
              ),
            ],
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(10),
            child: Container(
              height: 20.h,
              clipBehavior: Clip.none,
              decoration: BoxDecoration(
                color: AppColor.white,
                border: Border.all(color: AppColor.white),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36.r),
                  topRight: Radius.circular(36.r),
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 10.h)),
        const CustomCardItemsList(),
      ],
    );
  }
}

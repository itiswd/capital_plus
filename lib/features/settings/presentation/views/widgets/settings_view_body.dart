import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_router.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:capital_plus/core/widgets/main_custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            SizedBox(height: 20.0.h),
            Align(
              child: Text(
                'Settings',
                style: AppStyles.header1.copyWith(
                  fontFamily: appFontOutfit,
                ),
              ),
            ),
            SizedBox(height: 24.0.h),
            const MainButton(
              text: 'Privacy Policy',
              color: AppColor.lightGrey,
            ),
            SizedBox(height: kVerticalPadding),
            const MainButton(
              text: 'Terms of Use',
              color: AppColor.lightGrey,
            ),
            SizedBox(height: kVerticalPadding),
            const MainButton(
              text: 'Support form',
              color: AppColor.lightGrey,
            ),
            SizedBox(height: kVerticalPadding),
            const MainButton(
              text: 'Restore Purchases',
              color: AppColor.lightGrey,
            ),
            SizedBox(height: kVerticalPadding),
            MainButton(
              onTap: () => Get.toNamed(AppRouter.kPremiumView),
              text: 'Buy Premium \$0,99',
              color: AppColor.lightGreenAccent,
            ),
          ],
        ),
      ),
    );
  }
}

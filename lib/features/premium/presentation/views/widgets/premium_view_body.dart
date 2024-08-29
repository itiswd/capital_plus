// ignore_for_file: deprecated_member_use
import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/widgets/main_custom_button.dart';
import 'package:capital_plus/features/premium/presentation/views/widgets/premium_app_bar.dart';
import 'package:capital_plus/features/premium/presentation/views/widgets/premium_bottom_actions.dart';
import 'package:capital_plus/features/premium/presentation/views/widgets/premium_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PremiumViewBody extends StatelessWidget {
  const PremiumViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          children: [
            SizedBox(height: 20.0.h),
            const PremiumAppBar(),
            SizedBox(height: 12.0.h),
            Expanded(
              child: SizedBox(
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0.w),
                      child: SvgPicture.asset(
                        Assets.iconsArrowGroup,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ...List.generate(
                          3,
                          (index) {
                            return PremiumCard(index);
                          },
                        ),
                        const MainButton(
                          text: 'Buy Premium \$0,99',
                          color: AppColor.lightGreenAccent,
                        ),
                        SizedBox(height: 72.0.h),
                        const PremiumBottomAction(),
                        SizedBox(height: 20.0.h),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

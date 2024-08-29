import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/constants/app_consts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_assets.dart';
import '../../../../../core/service/shared_preferences_singleton.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    _executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SvgPicture.asset(
            Assets.iconsLogoGroupSplash,
          ),
        ),
        SizedBox(
          height: 36.0.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.2986),
          child: LinearPercentIndicator(
            width: MediaQuery.of(context).size.width * 0.4026,
            animation: true,
            lineHeight: 3.h,
            animationDuration: 2000,
            percent: 1,
            barRadius: const Radius.circular(10),
            progressColor: AppColor.blue,
            backgroundColor: AppColor.grey,
          ),
        ),
      ],
    );
  }

  void _executeNavigation() {
    bool isOnBoardingView = SharedPref.getBool(kIsOnBoardingView);
    Future.delayed(const Duration(seconds: 3), () {
      if (isOnBoardingView) {
        Get.offNamed(AppRouter.kBottomNavBarController);
      } else {
        Get.offNamed(AppRouter.kOnBoardingView);
      }
    });
  }
}

import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import '../../core/utils/app_styles.dart';
import 'custom_Rowof_dots_indecator_and_Button.dart';
import 'package:capital_plus/core/utils/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:capital_plus/widgets/onboarding/model.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:capital_plus/widgets/onboarding/custom_on_boarding.dart';
import 'package:capital_plus/core/service/shared_preferences_singleton.dart';


class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  final PageController _pageController = PageController();
  double _currentPage = 0.0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onNextPressed() {
    if (_currentPage < 2) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      SharedPref.setBool(kIsOnBoardingView, true);
      Get.toNamed(AppRouter.kHomeView);
    }
  }

  @override
  Widget build(BuildContext context) {
    List<CustomItem> customItemList = [
      CustomItem(
        svgPicture: SvgPicture.asset(Assets.iconsLogoOnboarding1),
        title: 'Welcome to CapitalPulse!',
        subtitle:
            'Your personal financial consultant\nis always at hand. A simple way\nto manage your finances.',
      ),
      CustomItem(
        svgPicture: SvgPicture.asset(Assets.iconsLogoOnboarding2),
        title: 'Manage Your Portfolio!',
        subtitle:
            'Monitor your portfolio status in real\ntime, analyze performance\nand make informed decisions.',
      ),
      CustomItem(
        svgPicture: SvgPicture.asset(Assets.iconsLogoOnboarding3),
        title: 'Become a Financial Expert!',
        subtitle:
            'Access a vast library of lessons\nand articles to expand your\nknowledge of financial markets',
      ),
      // Add more items as needed
    ];

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            SizedBox(height: 10.0.h),
            TextButton(
                onPressed: () {
                  SharedPref.setBool(kIsOnBoardingView, true);
                  Get.toNamed(AppRouter.kHomeView);
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Skip',
                    style: AppStyles.body2Medium
                        .copyWith(color: AppColor.darkGrey),
                  ),
                )),
            SizedBox(height: 5.0.h),
            CustomOnBoarding(pageController: _pageController, customItemList: customItemList),
            CustomRowofDotsIndecatorAndButton(currentPage: _currentPage.toInt(), customItemList: customItemList, onPressed: _onNextPressed),
            SizedBox(height: 20.0.h),
          ],
        ),
      ),
    );
  }
}


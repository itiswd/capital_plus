import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';
import 'custom_rowof_dots_indecator_and_button.dart';
import 'package:capital_plus/core/utils/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:capital_plus/features/onboarding/presentation/views/widgets/model.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:capital_plus/features/onboarding/presentation/views/widgets/custom_on_boarding.dart';
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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20.0.h),
            TextButton(
              onPressed: () {
                SharedPref.setBool(kIsOnBoardingView, true);
                Get.toNamed(AppRouter.kHomeView);
              },
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Skip',
                  style:
                      AppStyles.body2Medium.copyWith(color: AppColor.darkGrey),
                ),
              ),
            ),
            SizedBox(height: 20.0.h),
            CustomOnBoarding(
              pageController: _pageController,
              customItemList: customItemList,
            ),
            CustomRowofDotsIndecatorAndButton(
                currentPage: _currentPage.toInt(),
                customItemList: customItemList,
                onPressed: _onNextPressed),
            SizedBox(height: 20.0.h),
          ],
        ),
      ),
    );
  }
}

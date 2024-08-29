import 'package:flutter/material.dart';
import '../../../core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:capital_plus/features/onboarding/widgets/model.dart';
import 'package:capital_plus/core/constants/app_colors.dart';

class CustomOnBoarding extends StatelessWidget {
  const CustomOnBoarding({
    super.key,
    required PageController pageController,
    required this.customItemList,
  }) : _pageController = pageController;

  final PageController _pageController;
  final List<CustomItem> customItemList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
          controller: _pageController,
          itemCount: customItemList.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              children: [
                customItemList[index].svgPicture,
                SizedBox(height: 20.0.h),
                Text(
                  customItemList[index].title,
                  style: AppStyles.header1.copyWith(fontSize: 22.sp),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.h),
                Text(
                  customItemList[index].subtitle,
                  style:
                      AppStyles.body1Regular.copyWith(color: AppColor.darkGrey),
                  textAlign: TextAlign.center,
                ),
              ],
            );
          }),
    );
  }
}

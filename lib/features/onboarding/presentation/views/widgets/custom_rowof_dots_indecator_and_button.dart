import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:capital_plus/features/onboarding/presentation/views/widgets/model.dart';
import 'package:capital_plus/core/constants/app_colors.dart';

class CustomRowofDotsIndecatorAndButton extends StatefulWidget {
  const CustomRowofDotsIndecatorAndButton({
    super.key,
    required this.currentPage,
    required this.customItemList,
    required this.onPressed,
  });
  final int currentPage;
  final List<CustomItem> customItemList;
  final void Function() onPressed;
  @override
  State<CustomRowofDotsIndecatorAndButton> createState() =>
      _CustomRowofDotsIndecatorAndButtonState();
}

class _CustomRowofDotsIndecatorAndButtonState
    extends State<CustomRowofDotsIndecatorAndButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DotsIndicator(
          dotsCount: widget.customItemList.length,
          position: widget.currentPage,
          decorator: DotsDecorator(
            color: AppColor.grey,
            activeColor: AppColor.darkGrey,
            size: Size.square(8.0.r),
            activeSize: Size(16.0.w, 8.0.h),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0.r),
            ), // Active dot shape
          ),
        ),
        ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 25.h),
            backgroundColor: AppColor.lightGreenAccent, // Background color
          ),
          child: Text(
            widget.currentPage == 2.0 ? "Start" : "Next",
            style: AppStyles.body2Medium,
          ),
        )
      ],
    );
  }
}

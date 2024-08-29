import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 12.h),
        decoration: BoxDecoration(
          color: AppColor.lightGreenAccent,
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Text(
          'Add investment',
          textAlign: TextAlign.center,
          style: AppStyles.body2Medium.copyWith(
            color: const Color(0xff01042D),
          ),
        ),
      ),
    );
  }
}

import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CardsDetailsDottedLine extends StatelessWidget {
  final String image;
  const CardsDetailsDottedLine({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0.h),
      child: SizedBox(
        width: 295.5.w,
        height: 46.h,
        child: SvgPicture.asset(
          color: AppColor.blue,
          image,
        ),
      ),
    );
  }
}

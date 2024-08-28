import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppStyles {
  static TextStyle header1 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 26.sp,
    color: AppColor.black,
  );
  static TextStyle header2 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20.sp,
    color: AppColor.black,
  );
  static TextStyle body1Regular = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    color: AppColor.black,
  );
  static TextStyle body1Medium = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    color: AppColor.black,
  );
  static TextStyle body2Regular = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: AppColor.black,
  );
  static TextStyle body2Medium = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    color: AppColor.black,
  );
}

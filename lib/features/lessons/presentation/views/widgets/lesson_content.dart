import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/features/lessons/data/static/lessons_data_static.dart';

class LessonContent extends StatelessWidget {
  const LessonContent({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: kHorizontalPadding, vertical: kVerticalPadding),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(kRadius36),
          topRight: Radius.circular(kRadius36),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lessonsData[index].titleOne,
            style: AppStyles.header2.copyWith(
              color: AppColor.blue,
              fontFamily: appFontOutfit,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            lessonsData[index].subtitleOne,
            style: AppStyles.body2Regular,
          ),
          SizedBox(height: kVerticalPadding),
          Text(
            lessonsData[index].titleTwo,
            style: AppStyles.header2.copyWith(
              color: AppColor.blue,
              fontFamily: appFontOutfit,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            lessonsData[index].subtitleTwo,
            style: AppStyles.body2Regular,
          )
        ],
      ),
    );
  }
}

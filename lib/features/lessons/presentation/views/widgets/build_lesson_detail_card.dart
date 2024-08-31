import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/constants/app_assets.dart';
import '../../../data/static/lessons_data_static.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:capital_plus/core/constants/app_colors.dart';

class BuildLessonDetailCard extends StatelessWidget {
  const BuildLessonDetailCard({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      padding: EdgeInsets.only(
          top: kVerticalPadding,
          bottom: kVerticalPadding,
          right: kHorizontalPadding),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(kRadius24),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: AppColor.blueAccent,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lesson ${index + 1}",
                      style: AppStyles.header2.copyWith(
                        fontFamily: appFontOutfit,
                      ),
                    ),
                    SizedBox(
                      width: 200.w,
                      child: Text(
                        lessonsData[index].lessonTitle,
                        style: AppStyles.body1Regular,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                SvgPicture.asset(Assets.iconsCheckBox),
              ],
            ),
          )
        ],
      ),
    );
  }
}

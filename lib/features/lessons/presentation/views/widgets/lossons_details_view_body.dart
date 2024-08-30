import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/features/lessons/data/static/lessons_data_static.dart';
import 'package:capital_plus/features/lessons/presentation/views/widgets/build_lesson_detail_card.dart';

class LessonsDetailsViewBody extends StatelessWidget {
  const LessonsDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final int index = Get.arguments! as int;
    return SizedBox(
      child: Stack(
        children: [
          Container(
            height: (Get.height / 2).h,
            color: AppColor.blueAccent,
          ),
          SafeArea(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                SizedBox(height: 20.h),
                BuildLessonDetailCard(index: index),
                SizedBox(height: 24.h),
                LessonContent(
                  index: index,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LessonContent extends StatelessWidget {
  const LessonContent({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          topRight: Radius.circular(24.r),
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
          SizedBox(height: 16.h),
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

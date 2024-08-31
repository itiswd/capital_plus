import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/features/lessons/presentation/views/widgets/lesson_content.dart';
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
          ListView(
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
        ],
      ),
    );
  }
}

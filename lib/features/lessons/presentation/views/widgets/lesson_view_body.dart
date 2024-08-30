import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/features/lessons/presentation/views/widgets/lesson_element.dart';
import 'package:capital_plus/features/lessons/presentation/views/widgets/lessons_progress_details.dart';

class LessonsViewBody extends StatelessWidget {
  const LessonsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        children: [
          SizedBox(height: 20.0.h),
          Text(
            'Lessons',
            textAlign: TextAlign.center,
            style: AppStyles.header1.copyWith(
              fontFamily: appFontOutfit,
            ),
          ),
          SizedBox(height: 24.0.h),
          const LessonsProgressDetails(),
          SizedBox(height: 24.0.h),
          ...List.generate(
            10,
            (index) {
              return LessonElement(
                index: index,
              );
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../manager/lesson_element_state.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/constants/app_colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/constants/app_assets.dart';

class LessonElement extends ConsumerWidget {
  const LessonElement({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lessonElementState = ref.watch(lessonElementProvider(index).notifier);
    ref.watch(lessonElementProvider(index));

    return Stack(children: [
      GestureDetector(
        onTap: () {
          lessonElementState.navigation(index);
        },
        child: Container(
          margin: const EdgeInsets.only(bottom: 16.0),
          padding: EdgeInsets.symmetric(vertical: kVerticalPadding),
          decoration: BoxDecoration(
            color: AppColor.lightGrey,
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Row(
            children: [
              SizedBox(width: 16.0.w),
              _buildIcon(lessonElementState),
              const SizedBox(width: 12.0),
              _buildLessonInfo(lessonElementState),
            ],
          ),
        ),
      ),
      Positioned(
        right: 16.0.w,
        top: 29.0.h,
        child: GestureDetector(
          onTap: () {
            lessonElementState.updateBoolInList(index , value: !checkedList[index]);
          },
          child: _buildCheckbox(lessonElementState),
        ),
      ),
    ]);
  }

  Widget _buildIcon(LessonElementState lessonElementState) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        lessonElementState.getFilterColor(index),
        BlendMode.srcATop,
      ),
      child: Container(
        padding: const EdgeInsets.all(11.0),
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.blueAccent),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: SvgPicture.asset(Assets.iconsIcRoundNoteAlt),
      ),
    );
  }

  Widget _buildLessonInfo(LessonElementState lessonElementState) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Lesson ${index + 1}",
          style: AppStyles.header2.copyWith(
            color: lessonElementState.getTextColor(index),
            fontFamily: appFontOutfit,
          ),
        ),
        Text(
          lessonElementState.getLesson(index),
          style: AppStyles.body1Regular.copyWith(
            color: lessonElementState.getTextColor(index),
          ),
        ),
      ],
    );
  }

  Widget _buildCheckbox(LessonElementState lessonElementState) {
    if (lessonElementState.isLocked(index)) {
      return Padding(
        padding: EdgeInsets.only(top: 13.0.h),
        child: const Icon(
          Icons.lock,
          color: AppColor.grey,
        ),
      );
    } else {
      return checkedList[index]
          ? SvgPicture.asset(Assets.iconsCheckBox)
          : Container(
              width: 24.w,
              height: 24.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColor.blue,
                  width: 1.0,
                ),
              ),
            );
    }
  }
}

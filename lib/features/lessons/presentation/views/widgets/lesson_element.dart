import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../manager/lesson_element_state.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/constants/app_colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/service/shared_preferences_singleton.dart';

class LessonElement extends ConsumerWidget {
  const LessonElement({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isChecked = ref.watch(lessonElementProvider(index));
    final lessonElementState = ref.read(lessonElementProvider(index).notifier);

    bool isLocked =
        (index == 8 || index == 9) && !SharedPref.getBool(kIsPrimium);
    Color filterColor = isLocked ? AppColor.grey : Colors.transparent;
    Color? textColor = isLocked ? AppColor.grey : null;

    return GestureDetector(
      onTap: () {
        // Handle tap action
      },
      child: Container(
        margin:const EdgeInsets.only(bottom: 16.0),
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
        decoration: BoxDecoration(
          color: AppColor.lightGrey,
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Row(
          children: [
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                filterColor,
                BlendMode.srcATop,
              ),
              child: Container(
                padding:const EdgeInsets.all(11.0),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.blueAccent),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: SvgPicture.asset(Assets.iconsIcRoundNoteAlt),
              ),
            ),
           const SizedBox(width: 12.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lesson ${index + 1}",
                  style: AppStyles.header2.copyWith(color: textColor),
                ),
                Text(
                  lessonElementState.getLesson(index),
                  style: AppStyles.body1Regular.copyWith(color: textColor),
                ),
              ],
            ),
            const Spacer(),
            isLocked
                ? const Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Icon(
                      Icons.lock,
                      color: AppColor.grey,
                    ),
                  )
                : Transform.scale(
                    scale: 1.2,
                    child: Checkbox(
                      value: isChecked,
                      onChanged: (bool? newValue) {
                        if (newValue != null) {
                          lessonElementState.toggleChecked();
                        }
                      },
                      activeColor: AppColor.blue,
                      checkColor: Colors.white,
                      shape: const CircleBorder(),
                      side: MaterialStateBorderSide.resolveWith(
                        (states) =>
                            const BorderSide(width: .95, color: AppColor.blue),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

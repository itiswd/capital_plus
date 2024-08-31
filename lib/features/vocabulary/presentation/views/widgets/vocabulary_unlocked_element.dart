import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:capital_plus/features/vocabulary/model/vocabulary_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VocabularyUnlockedElement extends StatelessWidget {
  final VocabularyModel vocabulary;
  const VocabularyUnlockedElement({
    super.key,
    required this.vocabulary,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: kVerticalPadding),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppColor.lightGrey,
          borderRadius: BorderRadius.circular(kRadius24),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  vocabulary.title,
                  style: AppStyles.header2.copyWith(
                    fontFamily: appFontOutfit,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.0.w,
                    vertical: 4.0.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    border: Border.all(
                      width: 1,
                      color: AppColor.blueAccent,
                    ),
                    borderRadius: BorderRadius.circular(kRadius24),
                  ),
                  child: Center(
                    child: Text(
                      vocabulary.code,
                      textAlign: TextAlign.right,
                      style: AppStyles.body2Regular.copyWith(
                        fontFamily: '',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.0.h),
            Text(
              vocabulary.desc,
              style: AppStyles.body2Regular,
            ),
          ],
        ),
      ),
    );
  }
}

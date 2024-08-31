import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:capital_plus/features/vocabulary/data/vocabulary_static_data.dart';
import 'package:capital_plus/features/vocabulary/presentation/views/widgets/vocabulary_unlocked_element.dart';
import 'package:capital_plus/features/vocabulary/presentation/views/widgets/vocabulary_locked_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VocabularyBody extends StatelessWidget {
  const VocabularyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          children: [
            SizedBox(height: 20.0.h),
            Align(
              child: Text(
                'Vocabulary',
                style: AppStyles.header1.copyWith(
                  fontFamily: appFontOutfit,
                ),
              ),
            ),
            SizedBox(height: 20.0.h),
            ...List.generate(
              25,
              (index) {
                return index < 20
                    ? VocabularyUnlockedElement(
                        vocabulary: vocabularyData[index],
                      )
                    : VocabularyLockedElement(
                        vocabulary: vocabularyData[index],
                      );
              },
            )
          ],
        ),
      ),
    );
  }
}

import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:capital_plus/features/cards/data/static/company_data_static.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInformationCard extends StatelessWidget {
  const CustomInformationCard({super.key, required this.cardIndex});
  final int cardIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: kHorizontalPadding, vertical: kVerticalPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kRadius24),
        border: Border.all(
          color: AppColor.blueAccent,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Company History:',
            style: AppStyles.header2.copyWith(
              color: AppColor.blue,
              fontFamily: appFontOutfit,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            companyData[cardIndex].companyHistory,
            style: AppStyles.body2Regular,
          ),
        ],
      ),
    );
  }
}

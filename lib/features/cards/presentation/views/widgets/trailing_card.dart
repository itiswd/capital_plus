import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:capital_plus/features/cards/data/static/company_data_static.dart';
import 'package:capital_plus/features/cards/presentation/views/widgets/custom_year_return.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrailingCard extends StatelessWidget {
  const TrailingCard({super.key, required this.cardIndex});
  final int cardIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: AppColor.blue,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            companyData[cardIndex].trailingModel.subtitle,
            style: AppStyles.body2Regular.copyWith(
              color: AppColor.lightGrey,
            ),
          ),
          SizedBox(height: 12.h),
          CustomYearReturn(
            yearName: '1-Year Return',
            nameofCompany:
                companyData[cardIndex].trailingModel.yearReturn1.nameofCompany,
            msft: companyData[cardIndex]
                .trailingModel
                .yearReturn1
                .rateofCompany
                .toString(),
            sp500: companyData[cardIndex]
                .trailingModel
                .yearReturn1
                .rateofS$P500
                .toString(),
          ),
          SizedBox(height: 12.h),
          CustomYearReturn(
            yearName: '3-Year Return',
            nameofCompany:
                companyData[cardIndex].trailingModel.yearReturn3.nameofCompany,
            msft: companyData[cardIndex]
                .trailingModel
                .yearReturn3
                .rateofCompany
                .toString(),
            sp500: companyData[cardIndex]
                .trailingModel
                .yearReturn3
                .rateofS$P500
                .toString(),
          ),
          SizedBox(height: 12.h),
          CustomYearReturn(
            yearName: '5-Year Return',
            nameofCompany:
                companyData[cardIndex].trailingModel.yearReturn5.nameofCompany,
            msft: companyData[cardIndex]
                .trailingModel
                .yearReturn5
                .rateofCompany
                .toString(),
            sp500: companyData[cardIndex]
                .trailingModel
                .yearReturn5
                .rateofS$P500
                .toString(),
          ),
        ],
      ),
    );
  }
}

import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:capital_plus/features/cards/data/static/company_data_static.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCompanyInformation extends StatelessWidget {
  const CustomCompanyInformation({super.key, required this.cardIndex});
  final int cardIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: AppColor.blueAccent,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Company Information:',
            style: AppStyles.header1.copyWith(
              color: AppColor.blue,
              fontFamily: appFontOutfit,
            ),
          ),
          SizedBox(height: 12.h),
          Text(companyData[cardIndex].companyInformationModel.subtitle),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Full Time Employees',
                    style: AppStyles.body2Regular.copyWith(
                      color: AppColor.darkGrey,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    companyData[cardIndex]
                        .companyInformationModel
                        .fullTimeEmployees,
                    style: AppStyles.body1Medium.copyWith(
                      color: AppColor.blue,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sector',
                    style: AppStyles.body2Regular.copyWith(
                      color: AppColor.darkGrey,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    companyData[cardIndex].companyInformationModel.sector,
                    style: AppStyles.body1Medium.copyWith(
                      color: AppColor.blue,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:capital_plus/widgets/home/investment_locked_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:svg_flutter/svg.dart';

class Investments extends StatelessWidget {
  const Investments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool visible = true;
    final myDateTime = DateTime.now(); // Replace with your actual DateTime
    final formattedDate = DateFormat('dd-MM-yyyy').format(myDateTime);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
        5,
        (index) {
          return SizedBox(
            height: visible == true ? 184.0.h : 82.0.h,
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 8.0.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          width: 50.0.w,
                          height: 50.0.h,
                          investments['thumbnail'][index],
                        ),
                        SizedBox(width: 12.0.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                investments['name'][index],
                                style: AppStyles.body1Medium,
                              ),
                              SizedBox(height: 4.0.h),
                              Text(
                                investments['userName'][index],
                                style: AppStyles.body2Regular,
                              ),
                              SizedBox(height: 4.0.h),
                              Visibility(
                                visible: visible,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      formattedDate,
                                      style: AppStyles.body2Regular,
                                    ),
                                    Text(
                                      'Investment user text',
                                      style: AppStyles.body2Regular,
                                    ),
                                    const InvestmentLockedRow(),
                                    SizedBox(height: 4.0.h),
                                    const InvestmentLockedRow(),
                                    SizedBox(height: 4.0.h),
                                    const InvestmentLockedRow(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0.h),
                    const Divider(
                      color: AppColor.grey,
                      thickness: 0.5,
                    ),
                  ],
                ),
                Positioned(
                  top: 16.0.h,
                  right: 16.0.w,
                  child: Text(
                    '\$${investments['amount'][index]}',
                    style: AppStyles.body1Medium,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

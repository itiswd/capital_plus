import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:capital_plus/features/add_investment/data/models/investment_model.dart';
import 'package:capital_plus/features/home/data/static/home_static_data.dart';
import 'package:capital_plus/features/home/presentation/views/widgets/investment_locked_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class InvestmentsItem extends StatelessWidget {
  final InvestmentModel investment;
  final void Function()? onTap;
  final bool isOpen;
  const InvestmentsItem({
    super.key,
    required this.investment,
    this.onTap,
    required this.isOpen,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: isOpen == true ? 212.0.h : 82.0.h,
        color: AppColor.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            SizedBox(height: kVerticalPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  width: 50.0.w,
                  height: 50.0.h,
                  investmentsIcons[investment.investmentCategory]!,
                ),
                SizedBox(width: 12.0.w),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50.0.h,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  //Category
                                  SizedBox(
                                    height: 22.0.h,
                                    child: Text(
                                      investment.investmentCategory,
                                      style: AppStyles.body1Medium,
                                    ),
                                  ),
                                  const Spacer(),
                                  //Amount
                                  SizedBox(
                                    height: 22.0.h,
                                    child: Text(
                                      '\$${investment.investmentAmount}',
                                      style: AppStyles.body1Medium,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4.0.h),
                              //Name
                              SizedBox(
                                height: 22.0.h,
                                child: Text(
                                  investment.investmentName,
                                  style: AppStyles.body2Regular,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Visibility(
                        visible: isOpen,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 4.0.h),
                            SizedBox(
                              height: 22.0.h,
                              child: Text(
                                investment.investmentDate,
                                style: AppStyles.body2Regular,
                              ),
                            ),
                            //Description
                            SizedBox(
                              height: 22.0.h,
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                investment.description ??
                                    'Investment user text',
                                style: AppStyles.body2Regular,
                              ),
                            ),
                            const InvestmentLockedRow(
                              visible: false,
                              text: 'Interest',
                            ),
                            SizedBox(height: 4.0.h),
                            const InvestmentLockedRow(
                              visible: false,
                              text: 'Risk rating',
                            ),
                            SizedBox(height: 4.0.h),
                            const InvestmentLockedRow(
                              visible: false,
                              text: 'Expected return',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: kVerticalPadding),
            const Spacer(),
            //Divider
            const Divider(
              color: AppColor.grey,
              thickness: 0.5,
              height: 0,
            ),
          ],
        ),
      ),
    );
  }
}

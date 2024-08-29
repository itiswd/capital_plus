import 'package:capital_plus/features/add_investment/data/models/investment_model.dart';
import 'package:hive/hive.dart';
import 'package:svg_flutter/svg.dart';
import 'package:flutter/material.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/features/home/presentation/views/widgets/investment_locked_row.dart';

class Investments extends StatefulWidget {
  const Investments({
    super.key,
  });

  @override
  State<Investments> createState() => _InvestmentsState();
}

class _InvestmentsState extends State<Investments> {
  bool visible = false;
  late Box<InvestmentModel> investmentBox;
  late List investData;

  @override
  void initState() {
    super.initState();
    investmentBox = Hive.box<InvestmentModel>(kInvestmentHiveBox);
    investData = investmentBox.values.toList();
  }

  @override
  Widget build(BuildContext context) {
    return investmentBox.values.toList().isEmpty
        ? Text(
            'You don\'t have any investments added yet.',
            style: AppStyles.body2Regular.copyWith(
              color: AppColor.darkGrey,
            ),
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              investData.length,
              (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      visible = !visible;
                    });
                  },
                  child: Container(
                    height: visible == true ? 212.0.h : 82.0.h,
                    color: AppColor.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        SizedBox(height: 16.0.h),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              width: 50.0.w,
                              height: 50.0.h,
                              investments[
                                  investData[index].investmentCategory]!,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              //Category
                                              SizedBox(
                                                height: 22.0.h,
                                                child: Text(
                                                  investData[index]
                                                      .investmentCategory,
                                                  style: AppStyles.body1Medium,
                                                ),
                                              ),
                                              const Spacer(),
                                              //Amount
                                              SizedBox(
                                                height: 22.0.h,
                                                child: Text(
                                                  '\$${investData[index].investmentAmount}',
                                                  style: AppStyles.body1Medium,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 4.0.h),
                                          SizedBox(
                                            height: 22.0.h,
                                            child: Text(
                                              investData[index].investmentName,
                                              style: AppStyles.body2Regular,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: visible,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 4.0.h),
                                        SizedBox(
                                          height: 22.0.h,
                                          child: Text(
                                            investData[index].investmentDate,
                                            style: AppStyles.body2Regular,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 22.0.h,
                                          child: Text(
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
                        SizedBox(height: 16.0.h),
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
              },
            ),
          );
  }
}

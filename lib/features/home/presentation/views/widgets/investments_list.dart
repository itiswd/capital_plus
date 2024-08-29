import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:capital_plus/features/add_investment/data/models/investment_model.dart';
import 'package:capital_plus/features/home/presentation/views/widgets/investment_locked_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive/hive.dart';

class InvestmentsList extends StatefulWidget {
  const InvestmentsList({
    super.key,
  });

  @override
  State<InvestmentsList> createState() => _InvestmentsListState();
}

class _InvestmentsListState extends State<InvestmentsList> {
  List<bool>? isOpen;
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
        investData.length,
        (index) {
          isOpen ??= List.generate(investData.length, (index) => false);
          return GestureDetector(
            onTap: () {
              setState(() {
                isOpen![index] = !isOpen![index];
              });
            },
            child: Container(
              height: isOpen![index] == true ? 212.0.h : 82.0.h,
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
                        investmentsIcons[investData[index].investmentCategory]!,
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
                                    //Name
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
                              visible: isOpen![index],
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 4.0.h),
                                  SizedBox(
                                    height: 22.0.h,
                                    child: Text(
                                      investData[index].investmentDate,
                                      style: AppStyles.body2Regular,
                                    ),
                                  ),
                                  //Description
                                  SizedBox(
                                    height: 22.0.h,
                                    child: Text(
                                      overflow: TextOverflow.ellipsis,
                                      investData[index].description.isEmpty
                                          ? 'Investment user text'
                                          : investData[index].description,
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

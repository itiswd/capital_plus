import 'dart:math';

import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});
  // Generate random data for demonstration
  List<BarChartGroupData> generateData() {
    final random = Random();
    return List.generate(
      7,
      (index) {
        return BarChartGroupData(
          x: index + 1,
          barRods: [
            BarChartRodData(
              toY: random.nextInt(20) + 1,
              color: Colors.amber,
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: AppColor.darkBlue,
            borderRadius: BorderRadius.circular(24.0.r),
          ),
          child: Column(
            children: [
              //Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //All categories and amount
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'All categories',
                            style: AppStyles.body2Regular.copyWith(
                              color: AppColor.grey,
                            ),
                          ),
                          SizedBox(width: 4.0.w),
                          SvgPicture.asset(
                            width: 12.w,
                            height: 12.h,
                            AppAssets.buttonOpen,
                          )
                        ],
                      ),
                      SizedBox(height: 12.0.h),
                      Row(
                        children: [
                          Text(
                            '\$',
                            style: AppStyles.header1.copyWith(
                              color: AppColor.white,
                            ),
                          ),
                          SizedBox(width: 8.0.w),
                          Text(
                            '15000',
                            style: AppStyles.header1.copyWith(
                              color: AppColor.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  //Add button
                  Container(
                    width: 44.0,
                    height: 44.0,
                    decoration: BoxDecoration(
                      color: AppColor.lightGreenAccent,
                      borderRadius: BorderRadius.circular(80.0.r),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 28,
                    ),
                  )
                ],
              ),
              SizedBox(height: 36.0.h),
              //Chart
              SizedBox(
                height: 106.0.h,
                child: BarChart(
                  BarChartData(
                    titlesData: const FlTitlesData(
                      bottomTitles: AxisTitles(),
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    groupsSpace: 10,
                    barGroups: generateData(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:capital_plus/features/home/presentation/views/widgets/investments.dart';
import 'package:capital_plus/features/home/presentation/views/widgets/main_card_chart.dart';
import 'package:capital_plus/features/home/presentation/views/widgets/main_card_header.dart';
import 'package:flutter/material.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:capital_plus/core/constants/app_colors.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(height: 20.0.h),
            //Main Card
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppColor.darkBlue,
                borderRadius: BorderRadius.circular(24.0.r),
              ),
              child: Column(
                children: [
                  //Header
                  const MainCardHeader(),
                  SizedBox(height: 36.0.h),
                  //Chart
                  const MainCardChart(),
                ],
              ),
            ),
            SizedBox(height: 20.0.h),
            Text(
              'My investments',
              style: AppStyles.header2.copyWith(
                fontFamily: 'Outfit',
              ),
            ),
            SizedBox(height: 20.0.h),
            //Investments
            const Investments()
          ],
        ),
      ),
    );
  }
}

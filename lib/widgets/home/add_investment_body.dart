import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:svg_flutter/svg.dart';

class AddInvestmentBody extends StatelessWidget {
  const AddInvestmentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          children: [
            AddInvestmentViewAppBar(),
          ],
        ),
      ),
    );
  }
}

class AddInvestmentViewAppBar extends StatelessWidget {
  const AddInvestmentViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: SvgPicture.asset(Assets.arrowBack),
        ),
        SizedBox(width: 30.w),
        Text(
          'Add Investment',
          style: AppStyles.header2,
        )
      ],
    );
  }
}

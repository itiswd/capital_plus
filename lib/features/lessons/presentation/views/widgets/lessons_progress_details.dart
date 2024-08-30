import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/constants/app_colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:capital_plus/core/constants/app_assets.dart';
import '../../manager/lessons_progress_details_notifier.dart';

class LessonsProgressDetails extends StatelessWidget {
  const LessonsProgressDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppColor.blue,
          borderRadius: BorderRadius.circular(16.0.r),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 44.0
                    .w, 
                height: 44.0.h,
                decoration: const BoxDecoration(
                  color: AppColor.blueAccent, // Background color
                  shape: BoxShape.circle, // Circular shape
                ),
                child: Center(
                  child: SvgPicture.asset(Assets.iconsVector),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("All lessons",
                      style: AppStyles.body2Regular
                          .copyWith(color: AppColor.grey)),
                  Text("10",
                      style: AppStyles.header2
                          .copyWith(color: AppColor.white)),
                ],
              ),
              Container(
                width: 1,
                height: 48.0,
                color: AppColor.grey,
              ),
              Container(
                width: 44.0.w,
                height: 44.0.w,
                decoration: const BoxDecoration(
                  color: AppColor.blueAccent,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    Icons.check_circle,
                    color: AppColor.white,
                    size: 28.0.r,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("completed",
                      style: AppStyles.body2Regular
                          .copyWith(color: AppColor.grey)),
    Consumer(
              builder: (context, ref, child) {
                final counterValue = ref.watch(counterProvider);
                return Text(counterValue.toString(), style: AppStyles.header2
                          .copyWith(color: AppColor.white));
              },)
                ],
              )
            ]));
  }
}


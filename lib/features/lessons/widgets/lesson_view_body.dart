import 'package:flutter/material.dart';
import '../../../core/utils/app_styles.dart';
import '../../../core/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:capital_plus/core/constants/app_consts.dart';


class LessonsViewBody extends StatelessWidget {
  const LessonsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   SafeArea(child: 
    ListView(
      padding:const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      children: [
        SizedBox(height: 20.0.h),
        Text(
          'Lessons',
          textAlign: TextAlign.center,
          style: AppStyles.header1
        ),
        SizedBox(height: 24.0.h),
        Container(
          padding: const EdgeInsets.all(27.0),
          decoration: BoxDecoration(
            color: AppColor.blue,
            borderRadius: BorderRadius.circular(16.0.r),
          ),
          child: Row(
            children: [
                Container(
  width: 44.0.w,  // Adjust the width and height to match the size of the circle
  height: 44.0.h,
  decoration:const  BoxDecoration(
    color: AppColor.blueAccent, // Background color
    shape: BoxShape.circle, // Circular shape
  ),
  child: Center(
    child: Icon(
      Icons.check_circle,
      color: AppColor.white, // Icon color
      size: 28.0.r, // Icon size
    ),
  ),
)
            ]
          )
        )
        // ...List.generate(
        //   25,
        //   (index) {
        //     return LessonElement(
        //       index: index,
        //     );
        //   },
        // )
      ],
    )
    );
  }
}
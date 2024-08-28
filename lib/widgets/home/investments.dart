import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class Investments extends StatelessWidget {
  const Investments({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        5,
        (index) {
          return SizedBox(
            height: 82.0.h,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        width: 50.0.w,
                        height: 50.0.h,
                        investments['thumbnail'][index],
                      ),
                      SizedBox(width: 12.0.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                        ],
                      ),
                      const Spacer(),
                      Text(
                        '\$${investments['amount'][index]}',
                        style: AppStyles.body1Medium,
                      )
                    ],
                  ),
                  const Divider(
                    color: AppColor.grey,
                    thickness: 0.5,
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

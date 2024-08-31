// ignore_for_file: deprecated_member_use

import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainButton extends StatelessWidget {
  final String text;
  final Color color;
  final void Function()? onTap;
  const MainButton({
    super.key,
    required this.text,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(kRadius24),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Text(
                text,
                style: AppStyles.body2Medium.copyWith(
                  color: text == 'Restore Purchases'
                      ? AppColor.red
                      : AppColor.black,
                ),
              ),
              const Spacer(),
              SvgPicture.asset(
                color:
                    text == 'Restore Purchases' ? AppColor.red : AppColor.black,
                Assets.iconsFluentIosArrow24Filled,
              )
            ],
          ),
        ),
      ),
    );
  }
}

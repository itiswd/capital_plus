import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class PremiumBottomAction extends StatelessWidget {
  const PremiumBottomAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(
          3,
          (index) {
            return Text(
              premiumActions[index],
              style: AppStyles.body2Regular.copyWith(
                color: premiumActions[index] == 'Restore'
                    ? AppColor.red
                    : AppColor.darkGrey,
              ),
            );
          },
        )
      ],
    );
  }
}

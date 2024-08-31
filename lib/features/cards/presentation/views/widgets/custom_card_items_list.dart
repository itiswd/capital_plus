import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_router.dart';
import 'package:capital_plus/features/cards/data/static/cards_data_static.dart';
import 'package:capital_plus/features/cards/presentation/views/widgets/custom_card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomCardItemsList extends StatelessWidget {
  const CustomCardItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: 12.0.w, vertical: kVerticalPadding),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(kRadius24),
          topRight: Radius.circular(kRadius24),
        ),
      ),
      child: Wrap(
        spacing: 12.0.w,
        children: List.generate(
          cardsData.length,
          (index) {
            return GestureDetector(
              onTap: () {
                Get.toNamed(AppRouter.kCardDetailsView, arguments: index);
              },
              child: CustomCardItem(
                card: cardsData[index],
              ),
            );
          },
        ),
      ),
    );
  }
}

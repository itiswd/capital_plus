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
    return SliverGrid.builder(
      itemCount: cardsData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16.h,
        childAspectRatio: 0.9,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding:
              EdgeInsets.only(right: 16.w, left: index % 2 == 0 ? 16.w : 0),
          child: GestureDetector(
            onTap: () {
              Get.toNamed(AppRouter.kCardDetailsView, arguments: index);
            },
            child: CustomCardItem(
              card: cardsData[index],
            ),
          ),
        );
      },
    );
  }
}

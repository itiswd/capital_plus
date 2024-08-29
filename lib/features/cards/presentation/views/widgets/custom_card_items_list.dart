import 'package:capital_plus/features/cards/data/static/cards_data_static.dart';
import 'package:capital_plus/features/cards/presentation/views/widgets/custom_card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardItemsList extends StatelessWidget {
  const CustomCardItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: cardsData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: .95,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 36.h,
      ),
      itemBuilder: (context, index) {
        return CustomCardItem(
          card: cardsData[index],
        );
      },
    );
  }
}

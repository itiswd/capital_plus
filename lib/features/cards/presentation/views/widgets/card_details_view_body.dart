import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/features/cards/data/static/cards_data_static.dart';
import 'package:capital_plus/features/cards/presentation/views/widgets/card_information.dart';
import 'package:capital_plus/features/cards/presentation/views/widgets/custom_card_details_view_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CardDetailsViewBody extends StatelessWidget {
  const CardDetailsViewBody({super.key, required this.cardIndex});
  final int cardIndex;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: AppColor.blueAccent,
          height: (Get.height / 2).h,
        ),
        SafeArea(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              CustomCardDetailsViewAppBar(
                appBarTitle: cardsData[cardIndex].name,
                appBarTrailingLogo: cardsData[cardIndex].logo,
              ),
              SizedBox(height: 24.h),
              CardInformation(
                cardIndex: cardIndex,
              ),
            ],
          ),
        )
      ],
    );
  }
}

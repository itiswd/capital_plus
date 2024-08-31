import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/features/cards/presentation/views/widgets/cards_details_dotted_line.dart';
import 'package:capital_plus/features/cards/presentation/views/widgets/custom_company_history.dart';
import 'package:capital_plus/features/cards/presentation/views/widgets/custom_company_information.dart';
import 'package:capital_plus/features/cards/presentation/views/widgets/interesting_fact.dart';
import 'package:capital_plus/features/cards/presentation/views/widgets/trailing_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardInformation extends StatelessWidget {
  const CardInformation({super.key, required this.cardIndex});
  final int cardIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          topRight: Radius.circular(24.r),
        ),
      ),
      child: Column(
        children: [
          CustomCompanyInformation(
            cardIndex: cardIndex,
          ),
          const CardsDetailsDottedLine(
            image: Assets.iconsVector8,
          ),
          CustomInformationCard(
            cardIndex: cardIndex,
          ),
          const CardsDetailsDottedLine(
            image: Assets.iconsVector9,
          ),
          InterestingFact(
            cardIndex: cardIndex,
          ),
          const CardsDetailsDottedLine(
            image: Assets.iconsVector8,
          ),
          TrailingCard(
            cardIndex: cardIndex,
          ),
        ],
      ),
    );
  }
}

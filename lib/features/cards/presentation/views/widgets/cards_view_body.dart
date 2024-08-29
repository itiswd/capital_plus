import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:capital_plus/features/cards/data/models/card_model.dart';
import 'package:capital_plus/features/cards/data/static/cards_data_static.dart';
import 'package:capital_plus/features/cards/presentation/views/widgets/cards_view_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CardsViewBody extends StatelessWidget {
  const CardsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CardsViewAppBar(),
          ),
          CustomCardItemsList(),
        ],
      ),
    );
  }
}

class CustomCardItemsList extends StatelessWidget {
  const CustomCardItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: cardsData.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return CustomCardItem(
          card: cardsData[index],
        );
      },
    );
  }
}

class CustomCardItem extends StatelessWidget {
  const CustomCardItem({super.key, required this.card});
  final CardModel card;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: kHorizontalPadding, vertical: 16.h),
      decoration: BoxDecoration(
        color: AppColor.lightGrey,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                card.logo,
                fit: BoxFit.fill,
              ),
              Column(
                children: [
                  Text(
                    'Mkt Cap',
                    style: AppStyles.body2Medium.copyWith(
                      color: AppColor.darkBlue,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    card.assetsNum,
                    style: AppStyles.body2Medium.copyWith(
                      color: AppColor.blueAccent,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  card.name,
                  style: AppStyles.header2.copyWith(
                    fontFamily: appFontOutfit,
                  ),
                ),
              ),
              SvgPicture.asset(Assets.iconsArrowLeft)
            ],
          ),
        ],
      ),
    );
  }
}

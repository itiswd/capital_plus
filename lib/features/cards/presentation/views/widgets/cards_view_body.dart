import 'package:capital_plus/features/cards/presentation/views/widgets/cards_view_app_bar.dart';
import 'package:capital_plus/features/cards/presentation/views/widgets/custom_card_items_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardsViewBody extends StatelessWidget {
  const CardsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: CardsViewAppBar(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 24.h),
          ),
          const CustomCardItemsList(),
        ],
      ),
    );
  }
}

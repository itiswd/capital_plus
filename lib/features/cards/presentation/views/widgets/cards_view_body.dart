import 'package:capital_plus/features/cards/presentation/views/widgets/cards_view_app_bar.dart';
import 'package:flutter/material.dart';

class CardsViewBody extends StatelessWidget {
  const CardsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CardsViewAppBar(),
          )
        ],
      ),
    );
  }
}

import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardsView extends StatelessWidget {
  const CardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Column(
              children: [
                Text('kdnj dkndjb dkjdb dknjdb '),
                Text('kdnj dkndjb dkjdb dknjdb '),
              ],
            ),
            toolbarHeight: 100,
            actions: [
              SvgPicture.asset(Assets.iconsSearch),
            ],
          ),
        ],
      ),
      // body: CardsViewBody(),
    );
  }
}

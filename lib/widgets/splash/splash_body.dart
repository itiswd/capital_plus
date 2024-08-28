import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:capital_plus/core/constants/app_assets.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SvgPicture.asset(AppAssets.iconsLogoGroupSplash, width: 200, height: 200),
      ],
    );
  }
}

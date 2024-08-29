import 'package:capital_plus/core/constants/app_assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomItem {
  final SvgPicture svgPicture;
  final String title;
  final String subtitle;

  CustomItem({
    required this.svgPicture,
    required this.title,
    required this.subtitle,
  });
}

List<CustomItem> customItemList = [
  CustomItem(
    svgPicture: SvgPicture.asset(Assets.iconsLogoOnboarding1),
    title: 'Welcome to CapitalPulse!',
    subtitle:
        'Your personal financial consultant\nis always at hand. A simple way\nto manage your finances.',
  ),
  CustomItem(
    svgPicture: SvgPicture.asset(Assets.iconsLogoOnboarding2),
    title: 'Manage Your Portfolio!',
    subtitle:
        'Monitor your portfolio status in real\ntime, analyze performance\nand make informed decisions.',
  ),
  CustomItem(
    svgPicture: SvgPicture.asset(Assets.iconsLogoOnboarding3),
    title: 'Become a Financial Expert!',
    subtitle:
        'Access a vast library of lessons\nand articles to expand your\nknowledge of financial markets',
  ),
  // Add more items as needed
];

import 'package:capital_plus/features/add_investment/add_investment_view.dart';
import 'package:capital_plus/features/home/home_view.dart';
import 'package:capital_plus/features/onboarding/onboarding_view.dart';
import 'package:capital_plus/features/premium/premium_view.dart';
import 'package:capital_plus/features/splash/splash_view.dart';
import 'package:capital_plus/main.dart';
import 'package:get/get.dart';

abstract class AppRouter {
  static const String kSplashView = '/splashView';
  static const kOnBoardingView = '/onBoardingView';
  static const kHomeView = '/homeView';
  static const kStart = '/start';
  static const kAddInvestmentView = '/kAddInvestmentView';
  static const kPremiumView = '/kPremiumView';

  static final routes = [
    GetPage(
      name: kSplashView,
      page: () => const SplashView(),
    ),
    GetPage(
      name: kOnBoardingView,
      page: () => const OnboardingView(),
    ),
    GetPage(
      name: kHomeView,
      page: () => const HomeView(),
    ),
    GetPage(
      name: kStart,
      page: () => const Start(),
    ),
    GetPage(
      name: kAddInvestmentView,
      page: () => const AddInvestmentView(),
    ),
    GetPage(
      name: kPremiumView,
      page: () => const PremiumView(),
    ),
  ];
}

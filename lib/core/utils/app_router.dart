import 'package:capital_plus/features/add_investment/presentation/views/add_investment_view.dart';
import 'package:capital_plus/features/home/presentation/views/home_view.dart';
import 'package:capital_plus/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:capital_plus/features/premium/presentation/views/premium_view.dart';
import 'package:capital_plus/features/splash/presentation/views/splash_view.dart';
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

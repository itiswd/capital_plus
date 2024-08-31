import 'package:capital_plus/features/cards/presentation/views/card_details_view.dart';
import 'package:capital_plus/features/cards/presentation/views/cards_view.dart';
import 'package:get/get.dart';
import 'package:capital_plus/bottom_nav_bar.dart';
import '../../features/lessons/presentation/views/lessons_details_view.dart';
import 'package:capital_plus/features/home/presentation/views/home_view.dart';
import 'package:capital_plus/features/splash/presentation/views/splash_view.dart';
import 'package:capital_plus/features/premium/presentation/views/premium_view.dart';
import 'package:capital_plus/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:capital_plus/features/add_investment/presentation/views/add_investment_view.dart';

abstract class AppRouter {
  static const String kSplashView = '/splashView';
  static const String kOnBoardingView = '/onBoardingView';
  static const String kHomeView = '/homeView';
  static const String kBottomNavBarController = '/bottomNavBarController';
  static const String kAddInvestmentView = '/addInvestmentView';
  static const String kPremiumView = '/premiumView';
  static const String kLessonsDetailsView = '/lessonsDetailsView';
  static const String kCardsView = '/cardsView';
  static const String kCardDetailsView = '/cardDetailsView';
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
      name: kBottomNavBarController,
      page: () => const BottomNavBarController(),
    ),
    GetPage(
      name: kAddInvestmentView,
      page: () => const AddInvestmentView(),
    ),
    GetPage(
      name: kPremiumView,
      page: () => const PremiumView(),
    ),
    GetPage(
      name: kLessonsDetailsView,
      page: () => const LessonsDetailsView(),
    ),
    GetPage(
      name: kCardsView,
      page: () => const CardsView(),
    ),
    GetPage(
      name: kCardDetailsView,
      page: () => const CardDetailsView(),
    )
  ];
}

import 'package:capital_plus/view/screens/home_view.dart';
import 'package:capital_plus/view/screens/onboarding_view.dart';
import 'package:capital_plus/view/screens/splash_view.dart';
import 'package:get/get.dart';

abstract class AppRouter {
  static const String kSplashView = '/splashView';
  static const kOnBoardingView = '/onBoardingView';
  static const kHomeView = '/homeView';

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
  ];
}

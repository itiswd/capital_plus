import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/constants/app_consts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/constants/app_assets.dart';
import '../../../../../core/service/shared_preferences_singleton.dart';
import '../../../../lessons/presentation/manager/lesson_element_state.dart';
final lessonElementProvider = StateNotifierProvider.family<LessonElementState, bool, int>(
  (ref, index) => LessonElementState(ref),
);

class SplashBody extends ConsumerStatefulWidget {
  const SplashBody({super.key});

  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends ConsumerState<SplashBody> {
  @override
  void initState() {
    super.initState();
    _initializeLessonProvider();
    _executeNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildLogo(),
        const SizedBox(height: 36.0),
        _buildProgressIndicator(context),
      ],
    );
  }

  Widget _buildLogo() {
    return Center(
      child: SvgPicture.asset(
        Assets.iconsLogoGroupSplash,
      ),
    );
  }

  Widget _buildProgressIndicator(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.2986,
      ),
      child: LinearPercentIndicator(
        width: MediaQuery.of(context).size.width * 0.4026,
        animation: true,
        lineHeight: 3.0,
        animationDuration: 2000,
        percent: 1,
        barRadius: const Radius.circular(10),
        progressColor: AppColor.blue,
        backgroundColor: AppColor.grey,
      ),
    );
  }

  void _initializeLessonProvider() {
    
    final lessonElementState = ref.read(lessonElementProvider(0).notifier);
     
  
    lessonElementState.initializeCheckedList();
  }

  void _executeNavigation() {
    bool isOnBoardingView = SharedPref.getBool(kIsOnBoardingView) ;
    Future.delayed(const Duration(seconds: 3), () {
      final route = isOnBoardingView
          ? AppRouter.kBottomNavBarController
          : AppRouter.kOnBoardingView;
      Get.offNamed(route);
    });
  }
}
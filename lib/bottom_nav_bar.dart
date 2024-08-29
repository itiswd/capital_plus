import 'package:capital_plus/features/cards/presentation/views/cards_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/features/home/presentation/views/home_view.dart';
import 'package:capital_plus/features/lessons/presentation/views/lessons_view.dart';
import 'package:capital_plus/features/settings/presentation/views/settings_view.dart';
import 'package:capital_plus/features/vocabulary/presentation/views/vocabulary_view.dart';

final bottomBarProvider = StateProvider<int>((ref) => 0);

class BottomNavBarController extends ConsumerWidget {
  const BottomNavBarController({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var index = ref.watch(bottomBarProvider);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColor.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: index,
        onTap: (int value) =>
            ref.read(bottomBarProvider.notifier).state = value,
        items: List.generate(
          5,
          (i) => BottomNavigationBarItem(
            activeIcon: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: AppColor.blueAccent,
                  borderRadius: BorderRadius.circular(
                    22.0.r,
                  )),
              child: SvgPicture.asset(
                color: AppColor.white,
                'assets/icons/flowbite_$i.svg',
              ),
            ),
            icon: SvgPicture.asset(
              'assets/icons/flowbite_$i.svg',
            ),
            label: '',
          ),
        ),
      ),
      body: IndexedStack(
        index: index,
        children: const [
          HomeView(),
          CardsView(),
          LessonsView(),
          VocabularyView(),
          SettingsView(),
        ],
      ),
    );
  }
}

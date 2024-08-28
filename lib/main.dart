import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:capital_plus/screens/home_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:capital_plus/core/utils/app_router.dart';
import 'package:capital_plus/core/utils/my_bindings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:capital_plus/core/service/shared_preferences_singleton.dart';
// ignore_for_file: deprecated_member_use

void main() async {
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await SharedPref.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        SystemChrome.setSystemUIOverlayStyle(
          const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.transparent,
          ),
        );
        return ProviderScope(
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialBinding: MyBindings(),
            initialRoute: AppRouter.kSplashView,
            getPages: AppRouter.routes,
            theme: ThemeData(
              fontFamily: 'Montserrat',
              scaffoldBackgroundColor: AppColor.lightGrey,
            ),
          ),
        );
      },
    );
  }
}

final bottomBarProvider = StateProvider<int>((ref) => 0);

class Start extends ConsumerWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var index = ref.watch(bottomBarProvider);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColor.lightGrey,
        elevation: 0,
        currentIndex: index,
        onTap: (int value) =>
            ref.read(bottomBarProvider.notifier).state = value,
        items: List.generate(
          5,
          (i) => BottomNavigationBarItem(
            activeIcon: CircleAvatar(
              radius: 22.0.r,
              backgroundColor: AppColor.blueAccent,
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
          Scaffold(
              body: Center(
                  child: Text('2',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 24)))),
          Scaffold(
              body: Center(
                  child: Text('3',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 24)))),
          Scaffold(
              body: Center(
                  child: Text('4',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 24)))),
          Scaffold(
              body: Center(
                  child: Text('5',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 24)))),
        ],
      ),
    );
  }
}

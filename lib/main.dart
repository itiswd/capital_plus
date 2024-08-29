import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:capital_plus/core/utils/app_router.dart';
import 'package:capital_plus/core/utils/my_bindings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:capital_plus/core/service/shared_preferences_singleton.dart';
import 'package:capital_plus/features/add_investment/data/models/investment_model.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(InvestmentModelAdapter());
  await ScreenUtil.ensureScreenSize();
  await Hive.openBox<InvestmentModel>(kInvestmentHiveBox);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await SharedPref.init();
  runApp(const CapitalPulseApp());
}

class CapitalPulseApp extends StatelessWidget {
  const CapitalPulseApp({super.key});

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
              fontFamily: appFontMontserrat,
              scaffoldBackgroundColor: AppColor.white,
            ),
          ),
        );
      },
    );
  }
}

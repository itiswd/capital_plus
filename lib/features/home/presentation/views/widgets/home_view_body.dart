import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/features/home/presentation/views/widgets/investments.dart';
import 'package:capital_plus/features/home/presentation/views/widgets/main_card_chart.dart';
import 'package:capital_plus/features/home/presentation/views/widgets/main_card_header.dart';
import 'package:flutter/material.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:capital_plus/features/add_investment/presentation/managers/investment_provider.dart';

class HomeBody extends ConsumerWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Fetch the list of investments using Riverpod
    final investments = ref.watch(investmentListProvider);

    // Calculate the total investment amount
    int getTotalInvestmentAmount() {
      return investments.fold(
          0, (sum, investment) => sum + int.parse(investment.investmentAmount));
    }

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          children: [
            SizedBox(height: 20.0.h),
            // Main Card
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppColor.darkBlue,
                borderRadius: BorderRadius.circular(kRadius24),
              ),
              child: Column(
                children: [
                  // Header
                  MainCardHeader(
                    totalAmount: getTotalInvestmentAmount().toString(),
                  ),
                  SizedBox(height: 36.0.h),
                  // Chart
                  const MainCardChart(),
                ],
              ),
            ),
            SizedBox(height: 20.0.h),
            Text(
              'My investments',
              style: AppStyles.header2.copyWith(
                fontFamily: appFontOutfit,
              ),
            ),
            SizedBox(height: 20.0.h),
            // Investments
            const Investments(),
          ],
        ),
      ),
    );
  }
}

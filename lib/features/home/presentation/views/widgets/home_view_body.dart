import 'package:capital_plus/core/constants/app_consts.dart';
import 'package:capital_plus/features/add_investment/data/models/investment_model.dart';
import 'package:capital_plus/features/home/presentation/views/widgets/investments.dart';
import 'package:capital_plus/features/home/presentation/views/widgets/main_card_chart.dart';
import 'package:capital_plus/features/home/presentation/views/widgets/main_card_header.dart';
import 'package:flutter/material.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:hive/hive.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    var investmentBox = Hive.box<InvestmentModel>(kInvestmentHiveBox);
    int getTotalInvestmentAmount() {
      return investmentBox.values.toList().fold(
          0, (sum, investment) => sum + int.parse(investment.investmentAmount));
    }

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          children: [
            SizedBox(height: 20.0.h),
            //Main Card
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppColor.darkBlue,
                borderRadius: BorderRadius.circular(24.0.r),
              ),
              child: Column(
                children: [
                  //Header
                  MainCardHeader(
                    totalAmount: getTotalInvestmentAmount().toString(),
                  ),
                  SizedBox(height: 36.0.h),
                  //Chart
                  const MainCardChart(),
                ],
              ),
            ),
            SizedBox(height: 20.0.h),
            Text(
              'My investments',
              style: AppStyles.header2.copyWith(
                fontFamily: 'Outfit',
              ),
            ),
            SizedBox(height: 20.0.h),
            //Investments
            const Investments()
          ],
        ),
      ),
    );
  }
}

// class Customwidget extends StatelessWidget {
//   const Customwidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       slivers: [
//         SliverToBoxAdapter(),
//         SliverToBoxAdapter(),
//         SliverToBoxAdapter(),
//         SliverList.builder(
//           itemCount: 10,
//           itemBuilder: (context, index) {},
//         )
//       ],
//     );
//   }
// }

import 'package:capital_plus/features/add_investment/presentation/managers/investment_provider.dart';
import 'package:capital_plus/features/home/presentation/manager/investments_open_notifier.dart';
import 'package:capital_plus/features/home/presentation/views/widgets/investments_item.dart';
import 'package:flutter/material.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Investments extends ConsumerWidget {
  const Investments({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final investments =
        ref.watch(investmentListProvider); // Watch investment list provider

    return investments.isEmpty
        ? Text(
            'You don\'t have any investments added yet.',
            textAlign: TextAlign.center,
            style: AppStyles.body2Regular.copyWith(
              color: AppColor.darkGrey,
            ),
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              investments.length,
              (index) {
                // Watch the open state for this specific investment item
                final isOpen = ref.watch(investmentOpenProvider(index));

                return InvestmentsItem(
                  investment: investments[index],
                  isOpen: isOpen, // Pass the current open state
                  onTap: () {
                    // Toggle the open state when the item is tapped
                    ref.read(investmentOpenProvider(index).notifier).toggle();
                  },
                );
              },
            ),
          );
  }
}

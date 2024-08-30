import 'package:capital_plus/features/cards/presentation/views/widgets/card_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardDetailsView extends StatelessWidget {
  const CardDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final card = Get.arguments;
    return Scaffold(
      body: CardDetailsViewBody(
        card: card,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:payment_gateway/features/payment_gateway/presentation/check_out/widgets/thank_you_widgets/custom_check_icon.dart';
import 'package:payment_gateway/features/payment_gateway/presentation/check_out/widgets/thank_you_widgets/thank_you_card.dart';

import 'custom_dash_line.dart';

class ThankYouBody extends StatelessWidget {
  const ThankYouBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            const ThankYouCard(),

            Positioned(
              left: -2,
              bottom: MediaQuery.of(context).size.height * .185,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              right: -2,
              bottom: MediaQuery.of(context).size.height * .185,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            // dash line
            Positioned(
              bottom: MediaQuery.sizeOf(context).height * .2 + 8,
              left: 35 + 8,
              right: 35 + 8,
              child: const CustomDashedLine(),
            ),
            const Positioned(
                right: 0, left: 0, top: -10, child: CustomCheckIcon()),
          ],
        ),
      ),
    );
  }
}

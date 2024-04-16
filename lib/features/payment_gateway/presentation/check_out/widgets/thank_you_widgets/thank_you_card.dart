import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_gateway/features/payment_gateway/presentation/check_out/widgets/thank_you_widgets/payment_item_info.dart';

import '../../../../../../core/utils/styles.dart';
import '../total_price.dart';
import 'card_info_widget.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22),
      child: Container(
        decoration: ShapeDecoration(
          color: ColorsApp.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50 + 16, left: 20, right: 20),
          child: Column(children: [
            Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style: Styles.textStyle25,
            ),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: Styles.textStyle20,
            ),
            const SizedBox(
              height: 42,
            ),
            const PaymentItemInfo(
              title: 'Date',
              value: '01/24/2023',
            ),
            const SizedBox(
              height: 20,
            ),
            const PaymentItemInfo(
              title: 'Time',
              value: '10:15 AM',
            ),
            const SizedBox(
              height: 20,
            ),
            const PaymentItemInfo(
              title: 'To',
              value: 'Sam Louis',
            ),
            const Divider(
              height: 60,
              thickness: 2,
            ),
            const TotalPrice(title: 'Total', value: r'$50.97'),
            const SizedBox(
              height: 30,
            ),
            const CardInfoWidget(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FontAwesomeIcons.barcode,
                  size: 64,
                ),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.50, color: ColorsApp.green),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      textAlign: TextAlign.center,
                      style: Styles.textStyle24
                          .copyWith(color: const Color(0xff34A853)),
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
          ]),
        ),
      ),
    );
  }
}

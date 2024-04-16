import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class PaymentItemInfo extends StatelessWidget {
  const PaymentItemInfo({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Styles.textStyle18,
        ),
        Text(
          value,
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

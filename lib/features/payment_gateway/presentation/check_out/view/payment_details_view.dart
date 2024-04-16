import 'package:flutter/material.dart';
import 'package:payment_gateway/features/payment_gateway/presentation/check_out/widgets/custom_app_bar.dart';

import '../widgets/payment_details_widgets/payment_details_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Payment Details'),
      body: const PaymentDetailsBody(),
    );
  }
}

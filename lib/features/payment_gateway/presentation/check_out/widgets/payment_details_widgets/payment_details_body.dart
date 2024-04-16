import 'package:flutter/material.dart';
import 'package:payment_gateway/features/payment_gateway/presentation/check_out/widgets/payment_details_widgets/payment_list_view.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PaymentMethodsListView()
        // PaymentMethodItem(
        //   isActive: true,
        //   image: '',
        // ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../payment_details_widgets/payment_list_view.dart';
import 'custom_button_bloc_consumer.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 32,
          ),
          const PaymentMethodsListView(),
          const SizedBox(
            height: 32,
          ),
          CustomButtonBlocConsumer(),
        ],
      ),
    );
  }
}

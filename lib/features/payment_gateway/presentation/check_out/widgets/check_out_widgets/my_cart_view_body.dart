import 'package:flutter/material.dart';
import 'package:payment_gateway/features/payment_gateway/presentation/check_out/widgets/payment_details_widgets/payment_list_view.dart';
import 'package:payment_gateway/features/payment_gateway/presentation/check_out/widgets/total_price.dart';

import '../custom_button.dart';
import 'cart_info_item.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 18,
            ),
            Expanded(child: Image.asset('assets/images/basket_image.png')),
            const SizedBox(
              height: 18,
            ),
            const OrderInfoItem(
                title: 'Order Subtotal', value: 'Order Subtotal'),
            const SizedBox(
              height: 3,
            ),
            const OrderInfoItem(title: 'Discount', value: '\$0'),
            const SizedBox(
              height: 3,
            ),
            const OrderInfoItem(title: 'Shipping', value: '\$0'),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Divider(
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TotalPrice(
              title: 'Total Price',
              value: '\$0',
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //   builder: (context) => const PaymentDetailsView(),
                // ));
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return const PaymentMethodBottomSheet();
                    });
              },
              title: 'Complete Payment',
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

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
          CustomButton(onTap: () {}, title: "Continue"),
        ],
      ),
    );
  }
}

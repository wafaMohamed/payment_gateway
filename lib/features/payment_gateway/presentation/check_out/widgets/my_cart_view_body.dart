import 'package:flutter/material.dart';
import 'package:payment_gateway/features/payment_gateway/presentation/check_out/widgets/total_price.dart';

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
            Image.asset('assets/images/basket_image.png'),
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
            const TotalPrice(
              title: 'Total Price',
              value: '\$0',
            ),
          ],
        ),
      ),
    );
  }
}

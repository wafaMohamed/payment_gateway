import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_gateway/features/payment_gateway/data/stripe/data/repos/check_out_repo_impl.dart';
import 'package:payment_gateway/features/payment_gateway/presentation/check_out/widgets/check_out_widgets/paymant_method_bottom_sheet.dart';
import 'package:payment_gateway/features/payment_gateway/presentation/check_out/widgets/total_price.dart';

import '../../../../data/stripe/logic/stripe_payment_cubit.dart';
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
                      return BlocProvider(
                          create: (context) =>
                              StripePaymentCubit(CheckOutRepoImplementation()),
                          child: const PaymentMethodBottomSheet());
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

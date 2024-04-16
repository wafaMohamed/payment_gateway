import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:payment_gateway/features/payment_gateway/data/paypal/model/amount_model.dart';
import 'package:payment_gateway/features/payment_gateway/data/paypal/model/item_list_model.dart';
import 'package:payment_gateway/features/payment_gateway/data/stripe/logic/stripe_payment_cubit.dart';

import '../custom_button.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StripePaymentCubit, StripePaymentState>(
      builder: (BuildContext context, StripePaymentState state) {
        return CustomButton(
          onTap: () {
            //item list model
            List<OrderItemModel> orderItemModel = [
              OrderItemModel(
                currency: "USD",
                name: "Apple",
                price: "4",
                quantity: 10,
              ),
              OrderItemModel(
                currency: "USD",
                name: "Apple",
                price: "5",
                quantity: 12,
              ),
            ];
            var itemList = ItemListModel(items: orderItemModel);
            // amount model
            AmountModel amountModel = AmountModel(
              currency: 'USD',
              details: Details(
                shipping: "0",
                shippingDiscount: 0,
                subtotal: "100",
              ),
              total: "100",
            );
            // paypal package
            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => PaypalCheckoutView(
                sandboxMode: true,
                clientId: "YOUR CLIENT ID",
                secretKey: "YOUR SECRET KEY",
                transactions: [
                  {
                    "amount": amountModel.toJson(),
                    "description": "The payment transaction description.",
                    "item_list": itemList.toJson()
                  }
                ],
                note: "Contact us for any questions on your order.",
                onSuccess: (Map params) async {
                  log("onSuccess: $params");
                  Navigator.pop(context);
                },
                onError: (error) {
                  log("onError: $error");
                  Navigator.pop(context);
                },
                onCancel: () {
                  print('cancelled:');
                  Navigator.pop(context);
                },
              ),
            ));

            // PaymentInetInputModel paymentInetInputModel = PaymentInetInputModel(
            //   amount: '1000',
            //   currency: 'usd',
            // );
            // BlocProvider.of<StripePaymentCubit>(context)
            //     .makePayment(paymentInetInputModel: paymentInetInputModel);
          },
          title: "Continue",
          isLoading: state is StripePaymentLoading ? true : false,
        );
      },
      listener: (BuildContext context, StripePaymentState state) {
        // if (state is StripePaymentSuccess) {
        //   Navigator.of(context).pushReplacement(MaterialPageRoute(
        //     builder: (context) => const ThankYouView(),
        //   ));
        // }
        // if (state is StripePaymentFailure) {
        //   Navigator.of(context).pop();
        //
        //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //     content: Text(state.errorMessage),
        //   ));
        // }
      },
    );
  }
}

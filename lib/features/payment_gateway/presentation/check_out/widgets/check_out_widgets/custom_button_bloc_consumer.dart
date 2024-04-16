import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
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
            Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => PaypalCheckoutView(
                sandboxMode: true,
                clientId: "YOUR CLIENT ID",
                secretKey: "YOUR SECRET KEY",
                transactions: const [
                  {
                    "amount": {
                      "total": "100",
                      "currency": "USD",
                      "details": {
                        "subtotal": "100",
                        "shipping": "0",
                        "shipping_discount": 0
                      }
                    },
                    "description": "The payment transaction description.",
                    // "payment_options": {
                    //   "allowed_payment_method":
                    //       "INSTANT_FUNDING_SOURCE"
                    // },
                    "item_list": {
                      "items": [
                        {
                          "name": "Apple",
                          "quantity": 4,
                          "price": '10',
                          "currency": "USD"
                        },
                        {
                          "name": "Pineapple",
                          "quantity": 5,
                          "price": '12',
                          "currency": "USD"
                        }
                      ],

                      // Optional
                      //   "shipping_address": {
                      //     "recipient_name": "Tharwat samy",
                      //     "line1": "tharwat",
                      //     "line2": "",
                      //     "city": "tharwat",
                      //     "country_code": "EG",
                      //     "postal_code": "25025",
                      //     "phone": "+00000000",
                      //     "state": "ALex"
                      //  },
                    }
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

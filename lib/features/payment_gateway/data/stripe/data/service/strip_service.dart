import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_gateway/core/utils/api_service.dart';
import 'package:payment_gateway/core/utils/strip_keys.dart';

import '../model/ceate_payment_intent_model.dart';
import '../model/payment_intent_input_model.dart';

class StripeService {
  final ApiService apiService = ApiService();

  // payment intent
  Future<CreatePaymentIntentModel> createPaymentIntentModel(
      PaymentInetInputModel paymentInetInputModel) async {
    Response<dynamic> response = await apiService.post(
        // token == secret key
        token: StripeKeys.secretKey,
        contentType: Headers.formUrlEncodedContentType,
        url: ApiService.baseUrl,
        data: paymentInetInputModel.toJson());
    CreatePaymentIntentModel paymentIntent =
        CreatePaymentIntentModel.fromJson(response.data);
    return paymentIntent;
  }

  //payment intent sheet
  Future initPaymentSheet({required String paymentIntentClientSecret}) async {
    Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
            paymentIntentClientSecret: paymentIntentClientSecret,
            merchantDisplayName: "wafa mohamed"));
  }

  // present payment sheet
  Future displayPaymentSheet() async {
    Stripe.instance.presentPaymentSheet();
  }

  // make payment to display all 3 steps
  Future makePayment(
      {required PaymentInetInputModel paymentInetInputModel}) async {
    CreatePaymentIntentModel paymentIntent =
        await createPaymentIntentModel(paymentInetInputModel);
    await initPaymentSheet(
        paymentIntentClientSecret: paymentIntent.clientSecret!);
    await displayPaymentSheet();
  }
}
// step1/ (paymentIntentObject) Create payment intent require ( amount and currency)
// step2/ initialize - init payment sheet (paymentIntentClientSecret)
// Future<void> initPaymentSheet() async {
//   try {
//     // 2. initialize the payment sheet
//     await Stripe.instance.initPaymentSheet(
//       paymentSheetParameters: SetupPaymentSheetParameters(
//         // Main params
//         merchantDisplayName: 'Flutter Stripe Store Demo',
//         paymentIntentClientSecret: data['paymentIntent'],
//         // Extra options
//         applePay: const PaymentSheetApplePay(
//           merchantCountryCode: 'US',
//         ),
//         googlePay: const PaymentSheetGooglePay(
//           merchantCountryCode: 'US',
//           testEnv: true,
//         ),
//         style: ThemeMode.dark,
//       ),
//     );
//     setState(() {
//       _ready = true;
//     });
//   } catch (e) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Error: $e')),
//     );
//     rethrow;
//   }
// }

// step3/ present payment sheet (Checkout)

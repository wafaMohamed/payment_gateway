import 'package:payment_gateway/core/utils/api_service.dart';
import 'package:payment_gateway/features/payment_gateway/stripe/data/model/ceate_payment_intent_model.dart';
import 'package:payment_gateway/features/payment_gateway/stripe/data/model/payment_intent_input_model.dart';

class StripeService {
  final ApiService apiService = ApiService();
  CreatePaymentIntentModel createPaymentIntentModel(
      PaymentInetInputModel paymentInetInputModel) {
    apiService.post(
        token: "token",
        url: "https://api.stripe.com/v1/payment_intents",
        data: paymentInetInputModel.toJson());
  }
}

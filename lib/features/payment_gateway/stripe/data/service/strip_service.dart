import 'package:dio/dio.dart';
import 'package:payment_gateway/core/utils/api_service.dart';
import 'package:payment_gateway/core/utils/strip_keys.dart';
import 'package:payment_gateway/features/payment_gateway/stripe/data/model/ceate_payment_intent_model.dart';
import 'package:payment_gateway/features/payment_gateway/stripe/data/model/payment_intent_input_model.dart';

class StripeService {
  final ApiService apiService = ApiService();

  Future<CreatePaymentIntentModel> createPaymentIntentModel(
      PaymentInetInputModel paymentInetInputModel) async {
    Response<dynamic> response = await apiService.post(
        // token == secret key
        token: StripeKeys.secretKey,
        url: ApiService.baseUrl,
        data: paymentInetInputModel.toJson());
    CreatePaymentIntentModel paymentIntent =
        CreatePaymentIntentModel.fromJson(response.data);
    return paymentIntent;
  }
}

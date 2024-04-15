import 'package:dartz/dartz.dart';
import 'package:payment_gateway/core/errors/failure.dart';

import '../model/payment_intent_input_model.dart';
import '../service/strip_service.dart';
import 'check_out_repo.dart';

class CheckOutRepoImplementation implements CheckOutRepo {
  final StripeService stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentInetInputModel paymentInetInputModel}) async {
    try {
      await stripeService.makePayment(
          paymentInetInputModel: paymentInetInputModel);
      return right(null);
    } catch (error) {
      return left(ServerFailure(errorMessage: error.toString()));
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:payment_gateway/core/errors/failure.dart';
import 'package:payment_gateway/features/payment_gateway/stripe/data/model/payment_intent_input_model.dart';
import 'package:payment_gateway/features/payment_gateway/stripe/data/repos/check_out_repo.dart';
import 'package:payment_gateway/features/payment_gateway/stripe/data/service/strip_service.dart';

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

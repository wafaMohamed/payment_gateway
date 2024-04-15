import 'package:dartz/dartz.dart';
import 'package:payment_gateway/features/payment_gateway/stripe/data/model/payment_intent_input_model.dart';

import '../../../../../core/errors/failure.dart';

abstract class CheckOutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentInetInputModel paymentInetInputModel});
}

import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/failure.dart';
import '../model/payment_intent_input_model.dart';

abstract class CheckOutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentInetInputModel paymentInetInputModel});
}

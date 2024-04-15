import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:payment_gateway/core/errors/failure.dart';

import '../data/model/payment_intent_input_model.dart';
import '../data/repos/check_out_repo.dart';

part 'stripe_payment_state.dart';

class StripePaymentCubit extends Cubit<StripePaymentState> {
  StripePaymentCubit(this.checkOutRepo) : super(StripePaymentInitial());
  final CheckOutRepo checkOutRepo;

  Future makePayment(
      {required PaymentInetInputModel paymentInetInputModel}) async {
    emit(StripePaymentLoading());
    final Either<Failure, void> data = await checkOutRepo.makePayment(
      paymentInetInputModel: paymentInetInputModel,
    );
    data.fold(
        (Failure left) =>
            emit(StripePaymentFailure(errorMessage: left.errorMessage)),
        (void right) => StripePaymentSuccess());
  }
}

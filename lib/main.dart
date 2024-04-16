import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_gateway/features/payment_gateway/presentation/check_out/view/check_out_app_view.dart';

import 'core/utils/strip_keys.dart';

void main() {
  Stripe.publishableKey = StripeKeys.stripePublishableKey;
  runApp(const CheckOutApp());
}

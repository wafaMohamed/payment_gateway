import 'package:flutter/material.dart';
import 'package:payment_gateway/features/payment_gateway/presentation/check_out/widgets/custom_app_bar.dart';

import '../widgets/thank_you_widgets/thank_you_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const ThankYouBody(),
    );
  }
}

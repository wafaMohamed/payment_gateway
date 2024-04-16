import 'package:flutter/material.dart';

import '../widgets/check_out_widgets/my_cart_view_body.dart';
import '../widgets/custom_app_bar.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: 'My Cart',
      ),
      body: const MyCartViewBody(),
    );
  }
}

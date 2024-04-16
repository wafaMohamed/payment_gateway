import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class ThankYouBody extends StatelessWidget {
  const ThankYouBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: ShapeDecoration(
            color: ColorsApp.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
      Positioned(
          left: -20,
          bottom: MediaQuery.of(context).size.height * .2,
          child: const CircleAvatar(
            backgroundColor: Colors.transparent,
          )),
      Positioned(
          right: -20,
          bottom: MediaQuery.of(context).size.height * .2,
          child: const CircleAvatar(
            backgroundColor: Colors.transparent,
          )),
      Positioned(
          right: 0,
          left: 0,
          top: -50,
          child: CircleAvatar(
            backgroundColor: ColorsApp.grey,
            radius: 50,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: ColorsApp.green,
              child: const Icon(
                Icons.check,
                color: Colors.white,
                size: 50,
              ),
            ),
          )),
    ]);
  }
}

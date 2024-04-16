import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/styles.dart';

AppBar buildAppBar({required String title}) {
  return AppBar(
    leading: Center(
        child: Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SvgPicture.asset("assets/images/arrow.svg"),
    )),
    centerTitle: true,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: Styles.textStyle25,
    ),
  );
}

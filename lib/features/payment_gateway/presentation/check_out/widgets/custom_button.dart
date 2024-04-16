import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onTap,
      required this.title,
      this.isLoading = false});
  final VoidCallback? onTap;
  final String title;
  final bool isLoading;
  // final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 350,
        height: 73,
        decoration: ShapeDecoration(
          color: ColorsApp.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: isLoading
              ? const Center(
                  child: CircularProgressIndicator(
                  color: Colors.white,
                ))
              : Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Styles.textStyle22,
                ),
        ),
      ),
    );
  }
}

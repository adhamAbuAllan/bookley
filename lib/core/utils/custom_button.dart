import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      this.borderRadius,
      required this.text,
      required this.textSize,required this.onPressed});
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final void Function()? onPressed;
  final BorderRadius? borderRadius;
  final double textSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ElevatedButton(
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(16))),
          onPressed: onPressed,
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
                fontSize: textSize,
                fontWeight: FontWeight.w900,
                color: textColor),
          )),
    );
  }
}

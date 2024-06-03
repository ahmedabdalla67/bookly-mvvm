import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      this.borderRadius,
      required this.text,
      this.fontWeight = FontWeight.w700, this.onPressed});

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final FontWeight fontWeight;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(15),
            )),
        onPressed: onPressed,
        child: Text(
          text,
          style: Styles.textStyle20
              .copyWith(color: textColor, fontWeight: fontWeight),
        ),
      ),
    );
  }
}

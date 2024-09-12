import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
    this.borderRadius,
    required this.backGroundColor,
    required this.textColor,
    required this.text,
    this.textSize,
  });

  final BorderRadius? borderRadius;
  final Color backGroundColor;
  final Color textColor;
  final String text;
  final double? textSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: textSize
          ),
        ),
      ),
    );
  }
}

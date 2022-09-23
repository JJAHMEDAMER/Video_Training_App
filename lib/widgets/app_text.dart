import 'package:flutter/material.dart';
import 'package:video_training_app/utils/colors.dart';


class AppText extends StatelessWidget {

  // Widget Variables
  final String varText;
  final Color varColor;
  final double varSize;
  final FontWeight varWeight;
 
  //
  const AppText({
    super.key,
    required this.varText,
    this.varColor = Colors.black,
    this.varSize = 14,
    this.varWeight = FontWeight.w700,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      varText,
      style: TextStyle(
        color: varColor==Colors.black?AppColor.blackTextColor:varColor,
        fontSize: varSize,
        fontWeight: varWeight,
      ),
    );
  }
}

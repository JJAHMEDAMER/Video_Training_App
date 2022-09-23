import 'package:flutter/material.dart';
import 'package:video_training_app/utils/colors.dart';

class AppIcon extends StatelessWidget {
  // class variables
  final IconData varIcon;
  final double varSize;
  final Color varColor;

  //
  const AppIcon({
    super.key,
    required this.varIcon,
    this.varSize = 16,
    this.varColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      varIcon,
      size: varSize,
      color: varColor,
    );
  }
}

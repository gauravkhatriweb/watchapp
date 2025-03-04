import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class WCircularContainer extends StatelessWidget {
  const WCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.backgroundColor = WColors.white,
    this.margin = const EdgeInsets.only(right: 10),
  });
  final double? width;
  final double? height;
  final EdgeInsets margin;
  final double radius;
  final double padding;
  final Widget? child;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}

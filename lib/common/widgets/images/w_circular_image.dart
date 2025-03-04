import 'package:flutter/material.dart';
import 'package:watchapp/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class WCircularImage extends StatelessWidget {
  const WCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = WSizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color:
            backgroundColor ??
            (WHelperFunctions.isDarkMode(context)
                ? WColors.black
                : WColors.white),
        borderRadius: BorderRadius.circular(100),
      ),

      child: Center(
        child: Image(
          fit: fit,
          image:
              isNetworkImage
                  ? NetworkImage(image)
                  : AssetImage(image) as ImageProvider,
          color: overlayColor,
        ),
      ),
    );
  }
}

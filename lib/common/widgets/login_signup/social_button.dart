import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
class WSocialButtons extends StatelessWidget {
  const WSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: WColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: WSizes.iconMd,
              height: WSizes.iconMd,
              image: AssetImage(WImages.google),
            ),
          ),
        ),
        const SizedBox(width: WSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: WColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: WSizes.iconMd,
              height: WSizes.iconMd,
              image: AssetImage(WImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}

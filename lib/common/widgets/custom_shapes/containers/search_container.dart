import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class WSearchContainer extends StatelessWidget {
  const WSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: WSizes.defaultSpace),
        child: Container(
          width: WDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(WSizes.md),
          decoration: BoxDecoration(
            color:
                showBackground
                    ? dark
                        ? WColors.dark
                        : WColors.light
                    : Colors.transparent,
            borderRadius: BorderRadius.circular(WSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: WColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: WColors.darkerGrey),
              const SizedBox(width: WSizes.spaceBtwItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}

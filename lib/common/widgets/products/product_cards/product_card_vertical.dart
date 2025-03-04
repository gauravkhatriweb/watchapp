import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:watchapp/common/styles/shadows.dart';
import 'package:watchapp/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:watchapp/common/widgets/images/w_rounded_image.dart';
import 'package:watchapp/common/widgets/text/product_price_text.dart';
import 'package:watchapp/common/widgets/text/product_title_text.dart';
import 'package:watchapp/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icon/w_circular_icon.dart';

class WProductCardVertical extends StatelessWidget {
  const WProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Card(
        elevation: 3, // Subtle drop shadow
        color: dark ? WColors.darkerGrey : WColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(WSizes.cardRadiusLg),
        ),
        child: SizedBox(
          width: 180,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Section: Image with discount badge and favorite icon
              Stack(
                children: [
                  // Product image container
                  WRoundedContainer(
                    height: 180,
                    width: double.infinity,
                    padding: const EdgeInsets.all(WSizes.sm),
                    backgroundColor: dark ? WColors.dark : WColors.light,
                    child: const WRoundedImage(
                      imageUrl: WImages.productImage1,
                      applyImageRadius: true,
                    ),
                  ),
                  // Discount Badge (top-left)
                  Positioned(
                    top: 12,
                    left: 12, // Explicitly position on the left
                    child: WRoundedContainer(
                      radius: WSizes.sm,
                      backgroundColor: WColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: WSizes.sm,
                        vertical: WSizes.xs,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: WColors.black),
                      ),
                    ),
                  ),
                  // Favorite Icon (top-right)
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: WCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: WSizes.spaceBtwItems / 2),
              // Middle Section: Title and Brand info
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: WSizes.sm),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const WProductTitleText(
                        title: 'Green Nike Air Shoes',
                        smallSize: true,
                      ),
                      //const SizedBox(height: WSizes.spaceBtwItems / 2),
                      Row(
                        children: [
                          Text(
                            'Nike',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          const SizedBox(width: WSizes.xs),
                          const Icon(
                            Iconsax.verify5,
                            color: WColors.primary,
                            size: WSizes.iconXs,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //const SizedBox(height: WSizes.spaceBtwItems / 2),
              // Bottom Row: Price and Add Button
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: WSizes.sm),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const WProductPriceText(price: '350.0'),
                      Container(
                        decoration: const BoxDecoration(
                          color: WColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(WSizes.cardRadiusMd),
                            bottomRight: Radius.circular(WSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: WSizes.iconLg * 1.2,
                          height: WSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(Iconsax.add, color: WColors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //const SizedBox(height: WSizes.spaceBtwItems / 2),
            ],
          ),
        ),
      ),
    );
  }
}

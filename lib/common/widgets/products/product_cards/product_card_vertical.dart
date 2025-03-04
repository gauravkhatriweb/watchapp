import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:watchapp/common/styles/shadows.dart';
import 'package:watchapp/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:watchapp/common/widgets/images/w_rounded_image.dart';
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
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [WShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(WSizes.productImageRadius),
          color: dark ? WColors.darkerGrey : WColors.white,
        ),
        child: Column(
          children: [
            /// Thumbnail, WishList Button, Discount Tag
            WRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(WSizes.sm),
              backgroundColor: dark ? WColors.dark : WColors.light,
              child: Stack(
                children: [
                  /// -- Thumbnail Image
                  const WRoundedImage(
                    imageUrl: WImages.productImage1,
                    applyImageRadius: true,
                  ),

                  /// -- Sale Tag
                  Positioned(
                    top: 12,
                    child: WRoundedContainer(
                      radius: WSizes.sm,
                      backgroundColor: WColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: WSizes.sm,
                        vertical: WSizes.xs,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: WColors.black),
                      ),
                    ),
                  ),

                  /// -- Favourite Icon Button
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: WCircularIcon(icon: Iconsax.heart5, color: Colors.red),
                  ),
                ],
              ),
            ),
            const SizedBox(height: WSizes.spaceBtwItems / 2),

            /// -- Details,
            Padding(
              padding: const EdgeInsets.only(left: WSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const WProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  const SizedBox(height: WSizes.spaceBtwItems / 2),
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Price
                      Text(
                        '\$35.5',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: WColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(WSizes.cardRadiusMd),
                            bottomRight: Radius.circular(
                              WSizes.productImageRadius,
                            ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:watchapp/common/widgets/appbar/appbar.dart';
import 'package:watchapp/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:watchapp/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:watchapp/common/widgets/images/w_circular_image.dart';
import 'package:watchapp/common/widgets/layouts/gird_layout.dart';
import 'package:watchapp/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:watchapp/common/widgets/text/section_heading.dart';
import 'package:watchapp/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: WAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          WCartCounterIcon(
            onPressed: () {},
            iconColor: dark ? Colors.white : Colors.black,
          ),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: dark ? WColors.black : WColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(WSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    /// --Search bar
                    const SizedBox(height: WSizes.spaceBtwItems),
                    const WSearchContainer(
                      text: 'Search in Store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: WSizes.spaceBtwSections),

                    /// -- Featured Brands
                    WSectionHeading(title: 'Featured Brands', onPressed: () {}),
                    const SizedBox(height: WSizes.spaceBtwItems / 1.5),
                    WGirdLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: WRoundedContainer(
                            padding: const EdgeInsets.all(WSizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                /// -- Icon
                                Flexible(
                                  child: WCircularImage(
                                    image: WImages.clothIcon,
                                    isNetworkImage: false,
                                    backgroundColor: Colors.transparent,
                                    overlayColor:
                                        WHelperFunctions.isDarkMode(context)
                                            ? WColors.white
                                            : WColors.black,
                                  ),
                                ),
                                const SizedBox(width: WSizes.spaceBtwItems / 2),

                                /// -- Text
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Nike',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style:
                                                Theme.of(
                                                  context,
                                                ).textTheme.headlineSmall,
                                          ),
                                          const SizedBox(width: WSizes.xs),
                                          const Icon(
                                            Iconsax.verify5,
                                            color: WColors.primary,
                                            size: WSizes.iconXs,
                                          ),
                                          const SizedBox(
                                            height: WSizes.spaceBtwItems,
                                          ),
                                          Text(
                                            '256 products',
                                            overflow: TextOverflow.ellipsis,
                                            style:
                                                Theme.of(
                                                  context,
                                                ).textTheme.labelMedium,
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
                      },
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}

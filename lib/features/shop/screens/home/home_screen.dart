import 'package:flutter/material.dart';
import 'package:watchapp/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:watchapp/common/widgets/layouts/gird_layout.dart';
import 'package:watchapp/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:watchapp/common/widgets/text/section_heading.dart';
import 'package:watchapp/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:watchapp/features/shop/screens/home/widgets/home_categories.dart';
import 'package:watchapp/features/shop/screens/home/widgets/promo_silder.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const WHomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.blueAccent,
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: WSizes.spaceBtwSections),

                    WSearchContainer(text: 'Search in Store'),

                    SizedBox(height: WSizes.spaceBtwSections),

                    // Section Heading
                    WSectionHeading(
                      title: 'Popular Categories',
                      showActionButton: false,
                      textColor: Colors.white, // Visible against blue
                    ),

                    SizedBox(height: 16),

                    // Horizontal List of Categories
                    WHomeCategories(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(WSizes.defaultSpace),
              child: Column(
                children: [
                  // Promo Slider
                  const WPromoSlider(
                    banners: [
                      WImages.promoBanner1,
                      WImages.promoBanner2,
                      WImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: WSizes.spaceBtwSections),
                  const WSectionHeading(title: 'Popular Products'),
                  const SizedBox(height: WSizes.spaceBtwSections),

                  // Popular Products
                  WGirdLayout(
                    itemCount: 25,
                    itemBuilder: (_, index) => const WProductCardVertical(),
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

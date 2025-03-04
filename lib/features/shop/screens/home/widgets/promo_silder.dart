import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets/custom_shapes/containers/w_circular_container.dart';
import '../../../../../common/widgets/images/w_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../controllers/home_controller.dart';

class WPromoSlider extends StatelessWidget {
  const WPromoSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    final screenHeight = MediaQuery.of(context).size.height;
    final desiredHeight = screenHeight * 0.5; // 50% of screen height
    final maxHeight = 400.0;
    final sliderHeight = min(desiredHeight, maxHeight);

    return Container(
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: banners.length,
            itemBuilder: (context, index, realIndex) {
              final url = banners[index];

              return Container(
                width: double.infinity,
                child: WRoundedImage(imageUrl: url, fit: BoxFit.contain),
              );
            },
            options: CarouselOptions(
              height: sliderHeight,
              viewportFraction: 1.0,
              onPageChanged:
                  (index, reason) => controller.updatePageIndicator(index),
            ),
          ),

          const SizedBox(height: WSizes.spaceBtwItems),

          Center(
            child: Obx(
              () => Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int i = 0; i < banners.length; i++)
                    WCircularContainer(
                      width: 20,
                      height: 4,
                      margin: const EdgeInsets.only(right: 10),
                      backgroundColor:
                          controller.carousalCurrentIndex.value == i
                              ? WColors.primary
                              : WColors.grey,
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

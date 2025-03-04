import 'package:flutter/material.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class WLoginHeader extends StatelessWidget {
  const WLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    return SizedBox(
      width: double.infinity, // Takes full width
      child: Padding(
        padding: const EdgeInsets.all(WSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              dark ? WImages.lightAppLogo : WImages.darkAppLogo,
              width: 150, // Optional: Set image width if needed
            ),
            Text(
              WTexts.loginTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: WSizes.sm),
            Text(
              WTexts.loginSubTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
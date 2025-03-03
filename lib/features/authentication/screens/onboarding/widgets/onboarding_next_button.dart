import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:watchapp/features/authentication/controllers/onboarding/onboarding_controllers.dart';
import 'package:watchapp/utils/helpers/helper_functions.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    return Positioned(
      right: WSizes.defaultSpace,
      bottom: WDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder()),
        child: Icon(
          Iconsax.arrow_right_3,
          color: dark ? WColors.white : WColors.black,
        ),
      ),
    );
  }
}

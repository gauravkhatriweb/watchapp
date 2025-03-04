import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:watchapp/features/authentication/controllers/onboarding/onboarding_controllers.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: WSizes.defaultSpace,
      bottom: WDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder()),
        child: const Icon(Iconsax.arrow_right_3, color: WColors.white),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:watchapp/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:watchapp/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:watchapp/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:watchapp/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:watchapp/utils/constants/text_strings.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../controllers/onboarding/onboarding_controllers.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                title: WTexts.onBoardingTitle1,
                subTitle: WTexts.onBoardingSubTitle1,
                image: WImages.onBoardingImage1,
              ),
              OnBoardingPage(
                title: WTexts.onBoardingTitle2,
                subTitle: WTexts.onBoardingSubTitle2,
                image: WImages.onBoardingImage2,
              ),
              OnBoardingPage(
                title: WTexts.onBoardingTitle3,
                subTitle: WTexts.onBoardingSubTitle3,
                image: WImages.onBoardingImage3,
              ),
            ],
          ),

          // Skip Button
          const OnBoardingSkip(),

          // Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          // Circular Button
          const OnboardingNextButton(),
        ],
      ),
    );
  }
}

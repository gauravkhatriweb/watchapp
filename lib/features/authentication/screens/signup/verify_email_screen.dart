import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watchapp/common/widgets/success_screen/success_screen.dart';
import 'package:watchapp/features/authentication/screens/login/login_screen.dart';
import 'package:watchapp/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(WSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image: const AssetImage(WImages.deliveredEmailIllustration),
                width: WHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: WSizes.spaceBtwSections),
              // Title & SubTitle
              Text(
                WTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: WSizes.spaceBtwItems),
              Text(
                'gauravkhatriweb@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: WSizes.spaceBtwItems),
              Text(
                WTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: WSizes.spaceBtwSections),

              //Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed:
                      () => Get.to(
                        () => SuccessScreen(
                          image: WImages.staticSuccessIllustration,
                          title: WTexts.yourAccountCreatedTitle,
                          subTitle: WTexts.yourAccountCreatedSubTitle,
                          onPressed: () => Get.to(() => const LoginScreen()),
                        ),
                      ),
                  child: const Text(WTexts.wContinue),
                ),
              ),
              const SizedBox(height: WSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(WTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

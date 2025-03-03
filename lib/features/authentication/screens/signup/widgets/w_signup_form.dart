import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:watchapp/features/authentication/screens/signup/verify_email_screen.dart';
import 'package:watchapp/features/authentication/screens/signup/widgets/w_signup_terms_conditions_check_box.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class WSignupForm extends StatelessWidget {
  const WSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: WTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: WSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: WTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: WSizes.spaceBtwInputFields),
          // Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: WTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: WSizes.spaceBtwInputFields),
          //email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: WTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: WSizes.spaceBtwInputFields),
          //Phone Number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: WTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: WSizes.spaceBtwInputFields),
          //Password
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: WTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: WSizes.spaceBtwInputFields),

          // Terms&Conditions CheckBox
          const w_signup_terms_conditions_check_box(),
          const SizedBox(height: WSizes.spaceBtwSections),
          //Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(WTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}

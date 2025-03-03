import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watchapp/common/widgets/login_signup/form_divider.dart';
import 'package:watchapp/common/widgets/login_signup/social_button.dart';
import 'package:watchapp/features/authentication/screens/signup/widgets/w_signup_form.dart';
import 'package:watchapp/utils/constants/sizes.dart';
import 'package:watchapp/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(WSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                WTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: WSizes.spaceBtwSections),
              // Form
              const WSignupForm(),
              const SizedBox(height: WSizes.spaceBtwSections),

              //Divider
              WFormDivider(dividerText: WTexts.orSignUpWith.capitalize!),
              const SizedBox(height: WSizes.spaceBtwSections),

              //Social Buttons
              const WSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:watchapp/features/authentication/screens/login/widgets/login_form.dart';
import 'package:watchapp/features/authentication/screens/login/widgets/login_header.dart';
import 'package:watchapp/utils/helpers/helper_functions.dart';
import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_button.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        padding: WSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            //Logo, Title & SubTitle
            const WLoginHeader(),

            // Form
            const WLoginForm(),

            // Divider
            WFormDivider(dividerText: WTexts.orSignInWith.capitalize!),
            const SizedBox(height: WSizes.spaceBtwSections),
            //Footer
            const WSocialButtons(),
          ],
        ),
      ),
    );
  }
}

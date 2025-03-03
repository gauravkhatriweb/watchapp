import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class w_signup_terms_conditions_check_box extends StatelessWidget {
  const w_signup_terms_conditions_check_box({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (vaule) {}),
        ),
        const SizedBox(width: WSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${WTexts.iAgreeTo}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: ' ${WTexts.privacyPolicy} ',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.apply(
                  color: dark ? WColors.white : WColors.primary,
                ),
              ),
              TextSpan(
                text: ' ${WTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: ' ${WTexts.termsOfUse} ',
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.apply(
                  color: dark ? WColors.white : WColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
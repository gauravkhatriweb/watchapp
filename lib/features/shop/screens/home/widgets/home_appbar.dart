import 'package:flutter/material.dart';
import 'package:watchapp/utils/helpers/helper_functions.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class WHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = WHelperFunctions.isDarkMode(context);
    return WAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            WTexts.homeAppbarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium,
          ),
          Text(
            WTexts.homeAppbarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.labelSmall,
          ),
        ],
      ),
      actions: [WCartCounterIcon(onPressed: () {}, iconColor: dark ? Colors.white : Colors.black)],
    );
  }

  // Add preferred size implementation
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

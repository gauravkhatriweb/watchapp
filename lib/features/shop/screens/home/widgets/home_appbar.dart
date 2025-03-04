import 'package:flutter/material.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class WHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return WAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            WTexts.homeAppbarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: WColors.grey),
          ),
          Text(
            WTexts.homeAppbarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.labelSmall!.apply(color: WColors.white),
          ),
        ],
      ),
      actions: [WCartCounterIcon(onPressed: () {}, iconColor: Colors.white)],
    );
  }

  // Add preferred size implementation
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

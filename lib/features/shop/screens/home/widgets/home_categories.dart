import 'package:flutter/material.dart';
import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';
class WHomeCategories extends StatelessWidget {
  const WHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 20,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return WVerticalImageText(image: WImages.shoeIcon,title: 'Shoes', onTap: (){},);
        },
      ),
    );
  }
}
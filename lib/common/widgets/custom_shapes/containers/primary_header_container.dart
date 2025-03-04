import 'package:flutter/material.dart';
import 'package:watchapp/common/widgets/custom_shapes/containers/w_circular_container.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';

class WPrimaryHeaderContainer extends StatelessWidget {
  const WPrimaryHeaderContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return WCurvedEdgeWidget(
      child: Container(
        color: WColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -120, // Adjusted to bring the circle partially into view
                right: -120, // Reduced negative offset
                child: WCircularContainer(
                  width: 300, // Explicit width
                  height: 300, // Explicit height
                  radius: 150, // Half of width/height for a perfect circle
                  backgroundColor: WColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 80, // Adjusted vertical position
                right: -120, // Same offset as the first circle for consistency
                child: WCircularContainer(
                  width: 300,
                  height: 300,
                  radius: 150,
                  backgroundColor: WColors.textWhite.withOpacity(0.1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

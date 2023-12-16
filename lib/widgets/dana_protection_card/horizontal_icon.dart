import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../widgets.dart';

class HorizontalCaptionIcon extends StatelessWidget {
  const HorizontalCaptionIcon({
    super.key, required this.iconName, required this.caption,
  });

  final String iconName;
  final String caption;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Image(
          image: AssetLocations.iconLocation(iconName),
          width: 25,
        ),
        const Gap(
          h: 7,
        ),
        Text(
          caption,
          style: textTheme.bodySmall,
        )
      ],
    );
  }
}

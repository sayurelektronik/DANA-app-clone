import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../widgets.dart';

class ServiceCardIcon extends StatelessWidget {
  const ServiceCardIcon({
    super.key,
    required this.iconName,
    required this.iconSubtitle,
    this.iconSize = 40,
  });

  final String iconName;
  final String iconSubtitle;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Expanded(
      child: Column(
        children: [
          Image(
            image: AssetLocations.iconLocation(iconName),
            width: iconSize,
          ),
          const Gap(
            v: 12,
          ),
          Text(
            iconSubtitle,
            style: textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

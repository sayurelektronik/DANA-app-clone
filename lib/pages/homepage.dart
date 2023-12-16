import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/utils.dart';
import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: DanaCloneTheme.whiteBg,
          height: 390,
          child: Stack(
            children: [
              Container(
                height: 205,
                color: DanaCloneTheme.mainBlue,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeaderWidget(),
                  ServiceCardWidget(),
                ],
              )
            ],
          ),
        ),
        const FeedCardWidget(),
        const ImageLoopSliderWidget(),
        const WhatsNewCardWidget(),
        const NearbyCardWidget(),
        const MoreForYouCardWidget(),
        const DanaProtectionCardWidget(),
      ],
    );
  }
}

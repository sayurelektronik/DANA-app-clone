import 'package:dana_app_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class NearbyCardWidget extends StatelessWidget {
  const NearbyCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryTextTheme = Theme.of(context).primaryTextTheme;
    final textTheme = Theme.of(context).textTheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side:
            BorderSide(color: DanaCloneTheme.grey.withOpacity(0.4), width: 0.3),
      ),
      margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 20, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nearby',
              style: primaryTextTheme.headlineMedium,
            ),
            Text(
              'Find DANA merchants in your area!',
              style: textTheme.bodyMedium,
            ),
            const Gap(),
            Container(
              padding: EdgeInsets.fromLTRB(30, 40, 30, 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: DanaCloneTheme.grey.withOpacity(0.5),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Please allow location\naccess so you can use the\nNearby feature.',
                        style: textTheme.headlineMedium,
                      ),
                      Gap(
                        v: 15,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 40)),
                        onPressed: () {},
                        child: Text('ALLOW'),
                      )
                    ],
                  ),
                  Image(
                    image: AssetLocations.iconLocation('nearby'),
                    width: 60,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:dana_app_clone/utils/asset_location.dart';
import 'package:dana_app_clone/utils/dana_clone_theme.dart';
import 'package:dana_app_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DanaProtectionCardWidget extends StatelessWidget {
  const DanaProtectionCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryTextTheme = Theme.of(context).primaryTextTheme;
    final textTheme = Theme.of(context).textTheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: DanaCloneTheme.grey.withOpacity(0.4),
        ),
      ),
      margin: const EdgeInsets.only(left: 16, top: 8, right: 16),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image(
                      image: AssetLocations.iconLocation('dana_protection'),
                      width: 40,
                    ),
                    const Gap(
                      h: 5,
                    ),
                    Text(
                      'DANA\nPROTECTION',
                      style: textTheme.displaySmall,
                    ),
                  ],
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('DISCOVER'),
                ),
              ],
            ),
            const Gap(
              v: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HorizontalCaptionIcon(
                  iconName: 'money_back',
                  caption: 'Money-back\nGuarantee',
                ),
                HorizontalCaptionIcon(
                  iconName: 'secure_data',
                  caption: 'Secure Data\nPrivacy',
                ),
                HorizontalCaptionIcon(
                  iconName: 'live_assistance',
                  caption: '24/7 Live\nAssistance',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

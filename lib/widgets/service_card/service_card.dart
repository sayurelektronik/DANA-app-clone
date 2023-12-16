
import 'package:dana_app_clone/utils/utils.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';

class ServiceCardWidget extends StatelessWidget {
  const ServiceCardWidget({super.key});

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
      margin: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 35, 16, 15),
            child: Row(
              children: [
                Image(
                  image: AssetLocations.iconLocation('coupon'),
                  width: 40,
                ),
                const SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DANA Deals',
                      style: primaryTextTheme.headlineMedium,
                    ),
                    Text(
                      'Jajan Hemat s/d 43%',
                      style: textTheme.titleMedium,
                    ),
                  ],
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'SERBU!',
                    style: primaryTextTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 22, bottom: 12, right: 22),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    ServiceCardIcon(
                      iconName: 'electricity',
                      iconSubtitle: 'Electricity',
                    ),
                    ServiceCardIcon(
                      iconName: 'rewards',
                      iconSubtitle: 'Voucher A+ Rewards',
                    ),
                    ServiceCardIcon(
                      iconName: 'emas',
                      iconSubtitle: 'eMas',
                    ),
                    ServiceCardIcon(
                      iconName: 'goals',
                      iconSubtitle: 'DANA Goals',
                    ),
                  ],
                ),
                Gap(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    ServiceCardIcon(
                      iconName: 'item_digital',
                      iconSubtitle: 'Item Digital',
                      iconSize: 25,
                    ),
                    ServiceCardIcon(
                      iconName: 'pulsa',
                      iconSubtitle: 'Pulsa &\nData',
                      iconSize: 22,
                    ),
                    ServiceCardIcon(
                      iconName: 'dana_kaget',
                      iconSubtitle: 'DANA Kaget',
                      iconSize: 25,
                    ),
                    ServiceCardIcon(
                      iconName: 'view_all',
                      iconSubtitle: 'View All',
                      iconSize: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

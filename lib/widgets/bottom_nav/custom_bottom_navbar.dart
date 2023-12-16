import 'package:dana_app_clone/providers/bottom_navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/utils.dart';
import '../widgets.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  final List<String> _iconName = [
    'dana_nav_on',
    'history',
    'pocket',
    'profile',
  ];
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BottomNavProvider>(context, listen: false);
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: DanaCloneTheme.lightGrey),
            ),
          ),
          child: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              children: [
                IconBottomNavBar(
                  iconName: _iconName[0],
                  label: 'Home',
                  iconSize: 25,
                  onTap: () {
                    provider.onSelected(0);
                    setState(() {
                      _iconName[0] = 'dana_nav_on';
                      _iconName[1] = 'history';
                      _iconName[2] = 'pocket';
                      _iconName[3] = 'profile';
                    });
                  },
                ),
                IconBottomNavBar(
                  iconName: _iconName[1],
                  label: 'History',
                  iconSize: 25,
                  onTap: () {
                    provider.onSelected(1);
                    setState(() {
                      _iconName[0] = 'dana_nav_off';
                      _iconName[3] = 'profile';
                    });
                  },
                ),
                const Gap(
                  h: 90,
                ),
                IconBottomNavBar(
                  iconName: _iconName[2],
                  label: 'Pocket',
                  iconSize: 30,
                  onTap: () {
                    provider.onSelected(2);
                    setState(() {
                      _iconName[0] = 'dana_nav_off';
                      _iconName[3] = 'profile';
                    });
                  },
                ),
                IconBottomNavBar(
                  iconName: _iconName[3],
                  label: 'Me',
                  iconSize: 30,
                  onTap: () {
                    provider.onSelected(3);
                    setState(() {
                      _iconName[0] = 'dana_nav_off';
                      _iconName[1] = 'history';
                      _iconName[2] = 'pocket';
                      _iconName[3] = 'profile_on';
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: ButtonPay(),
        ),
      ],
    );
  }
}

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:dana_app_clone/utils/asset_location.dart';
import 'package:dana_app_clone/utils/dana_clone_theme.dart';
import 'package:flutter/material.dart';

class ButtonPay extends StatelessWidget {
  const ButtonPay({super.key});

  @override
  Widget build(BuildContext context) {
    return BouncingWidget(
      onPressed: () {},
      scaleFactor: 0.8,
      duration: Duration(milliseconds: 100),
      child: Container(
        height: 85,
        width: 85,
        margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
        decoration: BoxDecoration(
            border: Border.all(
              color: DanaCloneTheme.lightGrey,
            ),
            color: DanaCloneTheme.forthBlue,
            shape: BoxShape.circle),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetLocations.iconLocation('pay'),
              width: 32,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Pay',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: DanaCloneTheme.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}

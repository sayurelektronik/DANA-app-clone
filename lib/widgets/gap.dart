// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap({
    Key? key,
    this.v = 10,
    this.h = 10,
  }) : super(key: key);

  final double v;
  final double h;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: v,
      width: h,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/resources/resources.dart';

class MyStack extends StatelessWidget {
  final Widget child;
  const MyStack({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 73,
            right: 78,
            child: Image.asset(
              Images.divSocialDecoration,
              width: 28,
              height: 24,
            )),
        Positioned(
            top: 150,
            right: 0,
            child: Image.asset(
              Images.divSocialDecoration5,
              width: 60,
              height: 53,
            )),
        Positioned(
            top: 449,
            right: 0,
            child: Image.asset(
              Images.divSocialDecoration,
              width: 110,
              height: 104,
            )),
        Positioned(
            top: 649,
            left: 50,
            child: Image.asset(
              Images.divSocialDecoration,
              width: 55,
              height: 49,
            )),
        Positioned(
            top: 99,
            left: 17,
            child: Image.asset(
              Images.divSocialDecoration3,
              width: 60,
              height: 53,
            )),
            child,
      ],
    );
  }
}

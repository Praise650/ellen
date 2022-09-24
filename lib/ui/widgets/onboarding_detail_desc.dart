import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class OnBoardingDetailDesc extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  const OnBoardingDetailDesc({Key? key, required this.child, this.padding, this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.appSecondaryColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10)),
      margin: margin?? const EdgeInsets.only(top: 10),
      padding: padding?? const EdgeInsets.only(top: 15,bottom: 40,left: 15,right: 15),
      child: child,
    );
  }
}

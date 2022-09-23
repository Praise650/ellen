import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class OnBoardingDetailDesc extends StatelessWidget {
  final Widget child;

  const OnBoardingDetailDesc({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.2,
      height: 300,
      decoration: BoxDecoration(
          color: AppColor.appSecondaryColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(8.0),
      child: child,
    );
  }
}

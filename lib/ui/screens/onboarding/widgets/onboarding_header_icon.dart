import 'package:flutter/material.dart';

import '../../../styles/colors.dart';
import '../view_model/onboarding_view_model.dart';

class OnBoardingHeaderIcon extends StatefulWidget {
  OnBoardingHeaderIcon({
    Key? key,
    required this.index,
    required this.selectedIndex,
    required this.model,
  }) : super(key: key);
  int selectedIndex = 0;
  int index;
  OnboardingViewModel model;

  @override
  State<OnBoardingHeaderIcon> createState() => _OnBoardingHeaderIconState();
}

class _OnBoardingHeaderIconState extends State<OnBoardingHeaderIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: widget.selectedIndex - 1 == widget.index
                ? AppColor.appSecondaryColor
                : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: widget.selectedIndex - 1 == widget.index
                  ? Colors.teal
                  : Colors.black,
              width: widget.selectedIndex - 1 == widget.index ? 0.5 : 0,
              style: widget.selectedIndex - 1 == widget.index
                  ? BorderStyle.solid
                  : BorderStyle.none,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              widget.model.onboarding[widget.index].icon,
              color: widget.selectedIndex - 1 == widget.index
                  ? Colors.teal
                  : Colors.white,
              size: 24,
            ),
            Text(
              widget.model.onboarding[widget.index].label??'',
              style: TextStyle(
                color: widget.selectedIndex - 1 == widget.index
                    ? Colors.teal
                    : Colors.white,
              ),
            )
          ],
        ));
  }
}

import 'package:flutter/material.dart';

import '../../../styles/style.dart';

class GeneralHomepageHeader extends StatelessWidget {
  final String? label;
  final double? marginTop;
  final double? marginBottom;
  final Widget child;

  const GeneralHomepageHeader(
      {Key? key,
      this.label,
      this.marginTop,
      this.marginBottom,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: marginTop ?? 48),
        Text(
          label ?? '',
          style: kHeadline4TextStyle.copyWith(
            fontWeight: FontWeight.w700,
            color: AppColor.secondarySwatch[100],
          ),
        ),
        SizedBox(height: marginBottom ?? 24),
        child,
      ],
    );
  }
}

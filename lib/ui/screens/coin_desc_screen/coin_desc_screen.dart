import 'package:ellen/ui/layouts/base_scaffold.dart';
import 'package:ellen/ui/styles/style.dart';
import 'package:flutter/material.dart';

import '../../layouts/base_scaffold_body.dart';
import '../../styles/texts.dart';

class CoinDescScreen extends StatelessWidget {
  const CoinDescScreen({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      titleText: title,
      showBackBtn: true,
      body: BaseScaffoldBody(
        builder: (context, childScrollController) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 48),
            Column(
              children: [
                Text(
                  '$title Price',
                  style: kHeadline3TextStyle.copyWith(
                    color: AppColor.secondarySwatch[200],
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

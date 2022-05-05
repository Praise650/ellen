import 'package:ellen/ui/widgets/onboarding_detail_desc.dart';
import 'package:flutter/material.dart';

import '../../../../utils/styles.dart';

class PageViewFive extends StatelessWidget {
  const PageViewFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        OnBoardingDetailDesc(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Padding(
                  padding: const EdgeInsets.only(right: 60.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Access your account',
                          style: TextStyle(color: Colors.teal, fontSize: 24)),
                      SizedBox(height: 20),
                      Text.rich(
                          TextSpan(
                              text:
                                  'Here you can overview your personal info, your transactions, monthly savings and buy limits \n\nAlso get access to support, user terms etc.'),
                          textAlign: TextAlign.left,
                          softWrap: true,
                          style: AppStyles.onboardingTextStyle),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacer(
          flex: 5,
        ),
      ],
    );
  }
}

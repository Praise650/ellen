import 'package:ellen/ui/view/onboarding/widgets/onboarding_overlay.dart';
import 'package:ellen/utils/colors.dart';
import 'package:ellen/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../widgets/onboarding_detail_desc.dart';

class PageViewThree extends StatelessWidget {
  const PageViewThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          child: OnBoardingDetailDesc(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Here’s your wallet',
                        style: TextStyle(color: Colors.teal, fontSize: 24),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text.rich(
                          TextSpan(
                            text:
                                'When you’ve purchased your assets they will automatically end up here.',
                          ),
                          softWrap: true,
                          style: AppStyles.onboardingTextStyle),
                      SizedBox(
                        height: 20,
                      ),
                      Text.rich(
                          TextSpan(
                            text:
                                'Follow your portfolios value development and see all your transactions.',
                          ),
                          softWrap: true,
                          style: AppStyles.onboardingTextStyle),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          right: 0,
          left: 0,
          bottom: 40,
          child: OnBoardingOverlay()
        ),
      ],
    );
  }
}

import 'package:ellen/ui/screens/onboarding/widgets/onboarding_overlay.dart';
import 'package:ellen/ui/styles/texts.dart';
import 'package:flutter/material.dart';

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
                    children:  [
                      const Text(
                        'Here’s your wallet',
                        style: TextStyle(color: Colors.teal, fontSize: 24),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text.rich(
                          const TextSpan(
                            text:
                                'When you’ve purchased your assets they will automatically end up here.',
                          ),
                          softWrap: true,
                          style: TextStyle()),
                      const SizedBox(
                        height: 20,
                      ),
                      Text.rich(
                          const TextSpan(
                            text:
                                'Follow your portfolios value development and see all your transactions.',
                          ),
                          softWrap: true,
                          style: TextStyle()),
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

import 'package:ellen/ui/widgets/onboarding_detail_desc.dart';
import 'package:ellen/utils/styles.dart';
import 'package:flutter/material.dart';

class PageViewTwo extends StatelessWidget {
  const PageViewTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(flex: 1),
        OnBoardingDetailDesc(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Staking',
                      style: TextStyle(color: Colors.teal, fontSize: 24),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text.rich(
                        TextSpan(
                            text:
                                'Follow the prices APYs of the following assets for Bitcoin, Ethereum, Chainlink, Polkadot, Polygon.',
                            style: AppStyles.onboardingTextStyle),
                        softWrap: true),
                  ],
                ),
              ),
              Spacer(flex: 3),
              Center(child: Placeholder(fallbackWidth: 10, fallbackHeight: 20)),
              Spacer(flex: 3)
            ],
          ),
        ),
        Spacer(flex: 5)
      ],
    );
  }
}

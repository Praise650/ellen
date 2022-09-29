import 'package:ellen/ui/widgets/onboarding_detail_desc.dart';
import 'package:ellen/ui/styles/texts.dart';
import 'package:flutter/material.dart';

class PageViewTwo extends StatelessWidget {
  const PageViewTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnBoardingDetailDesc(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Staking',
            style: TextStyle(color: Colors.teal, fontSize: 24),
          ),
          const SizedBox(
            height: 20,
          ),
          Text.rich(
              TextSpan(
                  text:
                      'Follow the prices APYs of the following assets for Bitcoin, Ethereum, Chainlink, Polkadot, Polygon.',
                  style: onboardingTextStyle),
              softWrap: true),
          const SizedBox(height: 20),
          const Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 40,
            ),
          ),
        ],
      ),
    );
  }
}

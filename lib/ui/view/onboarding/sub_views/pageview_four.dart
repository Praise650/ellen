import 'package:ellen/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../widgets/onboarding_detail_desc.dart';

class PageViewFour extends StatelessWidget {
  const PageViewFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        OnBoardingDetailDesc(
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Login with BankID',style: TextStyle(color: Colors.teal, fontSize: 24),),
                SizedBox(
                  height: 20,
                ),
                Text.rich(TextSpan(
                    text:
                        'Login in with BankID and set up payment with your bank account, credit card or purchase with Swish.',
                    style: AppStyles.onboardingTextStyle)),
                Spacer(
                  flex: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Placeholder(
                      fallbackHeight: 20,
                      fallbackWidth: 30,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Placeholder(
                      fallbackHeight: 20,
                      fallbackWidth: 30,
                      color: Colors.red,
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
        Spacer(
          flex: 4,
        ),
      ],
    );
  }
}

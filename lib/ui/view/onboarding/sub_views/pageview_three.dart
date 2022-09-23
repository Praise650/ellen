import 'package:ellen/utils/colors.dart';
import 'package:ellen/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../widgets/onboarding_detail_desc.dart';

class PageViewThree extends StatelessWidget {
  const PageViewThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(flex: 1),
        Stack(
          children: [
            Container(
              height: 350,
              color: Colors.transparent,
              child: OnBoardingDetailDesc(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            Positioned(
              right: 0,
              left: 0,
              bottom: -10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 130,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 2),
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                      color: Colors.black),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                          color: Colors.grey,
                        ),
                        child: ListTile(
                          leading: const Icon(FontAwesomeIcons.bitcoin,
                              color: Colors.yellow, size: 18),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Bitcoin',
                                    style: AppStyles.bodyTextStyle,
                                  ),
                                  Text(
                                    '0.023 BTC',
                                    style: AppStyles.bodyTextStyle,
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Text(
                                    '10 670 SEK',
                                    style: AppStyles.bodyTextStyle,
                                  ),
                                  Text(
                                    '+2.1%',
                                    style: AppStyles.bodyTextStyle,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            color: AppColor.appSecondaryColor,
                            size: 16,
                          ),
                        ),
                      ),
                      Divider(
                        height: 0.5,
                        thickness: 1,
                        color: Colors.black.withOpacity(0.4),
                      ),
                      ListTile(
                        leading: Icon(FontAwesomeIcons.ethereum,
                            color: Colors.white, size: 18),
                        title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Ethereum',
                                    style: AppStyles.bodyTextStyle,
                                  ),
                                  Text(
                                    '0.023 ETH',
                                    style: AppStyles.bodyTextStyle,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Text(
                                    '5000 SEK',
                                    style: AppStyles.bodyTextStyle,
                                  ),
                                  Text(
                                    '+2.5%',
                                    style: AppStyles.bodyTextStyle,
                                  ),
                                ],
                              )
                            ]),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColor.appSecondaryColor,
                          size: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const Spacer(flex: 4),
      ],
    );
  }
}

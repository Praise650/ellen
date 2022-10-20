import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

import '../../../styles/style.dart';
import '../../coin_desc_screen/coin_desc_screen.dart';
import '../view_model/market_view_model.dart';

class PortfolioViewWidget extends ViewModelWidget<PortfolioViewModel> {
  const PortfolioViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, model) {
    return Column(
      children: List.generate(
        model.cryptoCoinsList.length,
            (index) => GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CoinDescScreen(),
              ),
            );
          },
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 24,
                        child: Icon(
                          FontAwesomeIcons.bitcoin,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            model.cryptoCoinsList[index].coinName ?? '',
                            style: kBodyText1TextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            model.cryptoCoinsList[index].shortName ?? '',
                          ),
                        ],
                      )
                    ],
                  ),
                  //TODO: implement graph
                  Container(
                    height: 5,
                    width: 40,
                    color: Colors.red,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        model.cryptoCoinsList[index].coinValue.toString(),
                        style: kBodyText1TextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColor.textSecondary,
                        ),
                      ),
                      Text(
                        '+ ' +
                            model.cryptoCoinsList[index].volatilityRate.toString(),
                        style: kBodyText1TextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColor.success,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

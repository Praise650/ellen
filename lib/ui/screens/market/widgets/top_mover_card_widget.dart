import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

import '../../../styles/style.dart';
import '../view_model/market_view_model.dart';

class TopMoversCardWidget extends ViewModelWidget<MarketViewModel> {
  const TopMoversCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, model) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          model.cryptoCoinsList.length,
          (index) => Container(
            padding: const EdgeInsets.all(24),
            margin: const EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 24,
                      child: Icon(
                        FontAwesomeIcons.bitcoin,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 39),
                    Text(
                      '+ ' +
                          model.cryptoCoinsList[index].volatilityRate
                              .toString() +
                          '%',
                      style: kBodyText1TextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColor.success,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 34),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.cryptoCoinsList[index].shortName ?? '',
                      style: kBodyText1TextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 4),
                    // Text('NGN 3,329.10')
                    Text(
                      'NGN ' +
                          model.cryptoCoinsList[index].coinValue.toString(),
                      style: kBodyText1TextStyle.copyWith(
                        fontSize: 12,
                        color: AppColor.textSecondary,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

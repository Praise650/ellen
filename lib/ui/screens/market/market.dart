import 'package:ellen/ui/screens/market/view_model/market_view_model.dart';
import 'package:ellen/ui/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

class Market extends StatelessWidget {
  const Market({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MarketViewModel>.reactive(
        viewModelBuilder: () => MarketViewModel(),
        builder: (context, model, _) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 05, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.appSecondaryColor),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: List.generate(
                      model.crptoCoins.length,
                      (index) => Column(
                            children: [
                              ListTile(
                                tileColor: Colors.black,
                                leading: const Icon(
                                  FontAwesomeIcons.bitcoin,
                                  color: Colors.white,
                                ),
                                title: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      model.crptoCoins[index].coinName,
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                    const Icon(
                                      Icons.account_balance_wallet_outlined,
                                      color: Colors.white,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          model.crptoCoins[index].rate
                                                  .toString() +
                                              ' %',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          model.crptoCoins[index].coinValue
                                              .toString(),
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                enableFeedback: true,
                                trailing: const Icon(
                                  Icons.chevron_right_sharp,
                                  color: Colors.white,
                                ),
                              ),
                              index == model.crptoCoins.length - 1
                                  ? SizedBox.shrink()
                                  : Divider(
                                      color: Colors.white.withOpacity(0.4),
                                      thickness: .2,
                                    )
                            ],
                          )),
                ),
              ),
            ),
          );
        });
  }
}

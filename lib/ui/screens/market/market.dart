import 'package:ellen/app/res/strings.dart';
import 'package:ellen/app/res/svgs.dart';
import 'package:ellen/ui/layouts/base_scaffold_body.dart';
import 'package:ellen/ui/screens/market/view_model/market_view_model.dart';
import 'package:ellen/ui/screens/market/widgets/general_homepage_header.dart';
import 'package:ellen/ui/styles/style.dart';
import 'package:ellen/ui/widgets/inputs/general_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

import '../../../app/res/images.dart';
import 'widgets/coin_view_widget.dart';
import 'widgets/top_mover_card_widget.dart';

class Market extends StatelessWidget {
  const Market({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MarketViewModel>.reactive(
      viewModelBuilder: () => MarketViewModel(),
      builder: (context, model, _) {
        return BaseScaffoldBody(
          builder: (context, scrollController) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Text(
                'Welcome Oladimeji!',
                style: kHeadline2TextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: AppColor.textPrimary,
                ),
              ),
              const SizedBox(height: 24),
              Image.asset(AppImages.homepageCard),
              const SizedBox(height: 24),
              const GeneralInput(),
              const GeneralHomepageHeader(
                label: 'Watchlists',
                marginBottom: 36,
                child: CoinViewWidget(),
              ),
              const GeneralHomepageHeader(
                label: 'Top Movers',
                child: TopMoversCardWidget(),
              ),
              GeneralHomepageHeader(
                label: 'Explore Bloxity',
                marginBottom: 48,
                child: Container(
                  height: 158,
                  padding: const EdgeInsets.only(left: 40),
                  color: const Color(0xffFFFFFF),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:40,bottom: 40),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Want to learn more\nabout bloxity?'),
                            SizedBox(height: 8),
                            Text('Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit. ')
                          ],
                        ),
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: SvgPicture.asset(AppSvgs.pana),),
                      Image.asset(AppImages.pana)
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

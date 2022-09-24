import 'package:ellen/ui/view/onboarding/sub_views/pageview_six.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

import '../sub_views/pageview_four.dart';
import '../sub_views/pageview_three.dart';
import '../sub_views/pageview_two.dart';

class OnboardingViewModel extends BaseViewModel {
  List<OnBoardingModel> onboarding = OnBoardingModel.components;

  int selectedIndex = 0;

  updateIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}

class OnBoardingModel {
  final String? label;
  final String? subTitle;
  final IconData? icon;
  final Widget? page;

  OnBoardingModel({
    this.label,
    this.subTitle,
    this.icon,
    this.page,
  });

  static List<OnBoardingModel> components = [
    OnBoardingModel(
      label: 'Staking',
      icon: FontAwesomeIcons.compass,
      page: const PageViewTwo(),
    ),
    OnBoardingModel(
      label: 'Market',
      icon: FontAwesomeIcons.chartLine,
      page: const PageViewThree(),
    ),
    OnBoardingModel(
      label: 'Account',
      icon: Icons.account_balance_wallet_outlined,
      page: const PageViewFour(),
    ),
    OnBoardingModel(
      label: 'Account',
      icon: Icons.account_balance_wallet_outlined,
      page: const PageViewSix(),
    ),
  ];
}

import 'package:ellen/ui/screens/news/news.dart';
import 'package:flutter/material.dart';

import '../../../app/res/svgs.dart';
import '../../../ui/screens/account/account.dart';
import '../../../ui/screens/portfolio/portfolio_screen.dart';
import '../../../ui/screens/market/market.dart';
import '../../../ui/styles/colors.dart';

class BottomNavModel {
  final String label;
  final String icon;
  bool isSelected;
  final Color color;
  final Color activeColor;
  final Widget screen;
  final GlobalKey<NavigatorState> navigatorKey;

  BottomNavModel({
    required this.label,
    required this.icon,
    required this.color,
    required this.activeColor,
    required this.isSelected,
    required this.screen,
    required this.navigatorKey,
  });
  static List<BottomNavModel> list = [
    BottomNavModel(
      color: AppColor.bottomNavIconColor,
      label: "Crypto List",
      icon: AppSvgs.navicon1,
      isSelected: true,
      activeColor: AppColor.primary,
      screen: const Market(),
      navigatorKey: GlobalKey<NavigatorState>(),
    ),
    BottomNavModel(
      color: AppColor.bottomNavIconColor,
      label: "Portfolio",
      icon: AppSvgs.navicon2,
      isSelected: false,
      activeColor: AppColor.primary,
      screen: const PortfolioScreen(),
      navigatorKey: GlobalKey<NavigatorState>(),
    ),
    BottomNavModel(
      color: AppColor.bottomNavIconColor,
      label: "News",
      icon: AppSvgs.navicon3,
      isSelected: false,
      activeColor: AppColor.primary,
      screen: const News(),
      navigatorKey: GlobalKey<NavigatorState>(),
    ),
    BottomNavModel(
      color: AppColor.bottomNavIconColor,
      label: "Account",
      icon: AppSvgs.navicon4,
      isSelected: false,
      activeColor: AppColor.primary,
      screen: Account(),
      navigatorKey: GlobalKey<NavigatorState>(),
    ),
  ];
}
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../../core/models/dashboard/dashboard_ui_model.dart';

class DashboardViewModel extends BaseViewModel{
  int selectedIndex = 0;

  List<BottomNavModel> bottomNavItems = BottomNavModel.list;
  String currentPage = "Crypto List";

  void selectTab(
      String label, int index, GlobalKey<NavigatorState> navigatorKey) {
    if (label == currentPage) {
      navigatorKey.currentState?.popUntil((route) => route.isFirst);
    } else {
      currentPage = label;
      selectedIndex = index;
      notifyListeners();
    }
  }

  // updateIndex(int index) {
  //   selectedIndex = index;
  //   notifyListeners();
  // }
}
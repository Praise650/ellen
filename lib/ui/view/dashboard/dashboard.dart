import 'package:ellen/ui/view/dashboard/sub_view/account.dart';
import 'package:ellen/ui/view/dashboard/sub_view/buy.dart';
import 'package:ellen/ui/view/market/market.dart';
import 'package:ellen/ui/view/dashboard/sub_view/save.dart';
import 'package:ellen/ui/view/dashboard/sub_view/wallet.dart';
import 'package:ellen/utils/colors.dart';
import 'package:ellen/utils/styles.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int selectedIndex = 0;
  List<Widget> screens = [
    const Market(),
    const Wallet(),
    const Buy(),
    Account(),
    const Save()
  ];
  List<String> titleText = ["Market", "My Wallet", "Buy", "My Account", ""];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titleText[selectedIndex],
          style: AppStyles.titleTextStyle,
        ),
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          selectedIndex == 4
              ? const Icon(
                  Icons.add,
                  color: Colors.white,
                )
              : const SizedBox.shrink()
        ],
      ),
      backgroundColor: Colors.black,
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.query_stats),
              label: 'Market',
              tooltip: 'Market'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_outlined),
              label: 'Wallet',
              tooltip: 'Wallet'),
          BottomNavigationBarItem(
              icon: Icon(Icons.replay_circle_filled),
              label: 'Buy',
              tooltip: 'Buy'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: 'Account',
              tooltip: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: 'Save',
              tooltip: 'Save')
        ],
        elevation: 5,
        onTap: (index) => setState(() => selectedIndex = index),
        backgroundColor: AppColor.appSecondaryColor,
        currentIndex: selectedIndex,
        iconSize: 24,
        enableFeedback: true,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(color: Colors.teal),
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.white,
        unselectedLabelStyle: const TextStyle(color: Colors.white),
      ),
    );
  }
}

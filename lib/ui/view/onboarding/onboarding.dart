import 'package:ellen/ui/view/onboarding/sub_views/pageview_five.dart';
import 'package:ellen/ui/view/onboarding/sub_views/pageview_four.dart';
import 'package:ellen/ui/view/onboarding/sub_views/pageview_one.dart';
import 'package:ellen/ui/view/onboarding/sub_views/pageview_six.dart';
import 'package:ellen/ui/view/onboarding/sub_views/pageview_three.dart';
import 'package:ellen/utils/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'sub_views/pageview_two.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  late PageController pageController;

  @override
  initState() {
    super.initState();
    pageController = PageController();
  }

  int selectedIndex = 0;
  List<Widget> screens = const [
    PageViewOne(),
    PageViewTwo(),
    PageViewThree(),
    PageViewFour(),
    PageViewFive(),
    PageViewSix()
  ];
  List<IconData> icons = [
    FontAwesomeIcons.compass,
    FontAwesomeIcons.chartLine,
    Icons.account_balance_wallet_outlined,
    Icons.refresh,
    Icons.person_outline_rounded,
  ];
  List<String> iconsText = [
    'Staking',
    'Market',
    'Wallet',
    'Save',
    'Account',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: selectedIndex == 5
                  ? const SizedBox.shrink()
                  : TextButton.icon(
                      onPressed: () {},
                style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all<Color>(Colors.transparent)
                ),
                      label:
                          const Icon(Icons.east, size: 14, color: Colors.teal),
                      icon: const Text('Hoppa over',
                          style: TextStyle(color: Colors.teal)),
                    ),
            ),
            selectedIndex > 0
                ? SizedBox(height: MediaQuery.of(context).size.height * 0.15)
                : SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            selectedIndex == 0 || selectedIndex == 5
                ? const SizedBox.shrink()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        icons.length,
                        (index) => Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: selectedIndex -1 == index
                                    ? AppColor.appSecondaryColor
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: selectedIndex -1 == index
                                      ? Colors.teal
                                      : Colors.black,
                                  width: selectedIndex -1 == index ? 0.5 : 0,
                                  style: selectedIndex -1 == index
                                      ? BorderStyle.solid
                                      : BorderStyle.none,
                                )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  icons[index],
                                  color: selectedIndex -1 == index
                                      ? Colors.teal
                                      : Colors.white,
                                  size: 24,
                                ),
                                Text(
                                  iconsText[index],
                                  style: TextStyle(
                                    color: selectedIndex -1== index
                                        ? Colors.teal
                                        : Colors.white,
                                  ),
                                )
                              ],
                            ))),
                  ),
            Expanded(
              child: PageView.builder(
                  controller: pageController,
                  physics: AlwaysScrollableScrollPhysics(),
                  dragStartBehavior: DragStartBehavior.start,
                  scrollDirection: Axis.horizontal,
                  itemCount: screens.length,
                  pageSnapping: true,
                  onPageChanged: (i) => setState(() => selectedIndex = i),
                  itemBuilder: (BuildContext context, int index) =>
                      screens[selectedIndex]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  List.generate(screens.length, (index) => tealDot(index)),
            )
          ],
        ),
      ),
    );
  }

  Widget tealDot(int i) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.bounceOut,
        height: 10.0,
        width: 10.0,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          color:
              selectedIndex == i ? Colors.teal : Colors.white.withOpacity(0.39),
        ),
      ),
    );
  }
}

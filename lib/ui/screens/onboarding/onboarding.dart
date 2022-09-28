import 'package:ellen/utils/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'view_model/onboarding_view_model.dart';
import 'widgets/onboarding_header_icon.dart';

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

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnboardingViewModel>.reactive(
        viewModelBuilder: () => OnboardingViewModel(),
        builder: (context, model, _) {
          return Scaffold(
            backgroundColor: AppColor.backgroundColor,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: model.selectedIndex == 3
                        ? const SizedBox.shrink()
                        : TextButton.icon(
                            onPressed: () {},
                            style: ButtonStyle(
                                shadowColor: MaterialStateProperty.all<Color>(
                                    Colors.transparent)),
                            label: const Icon(Icons.east,
                                size: 14, color: Colors.teal),
                            icon: const Text('Skip',
                                style: TextStyle(color: Colors.teal)),
                          ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      model.onboarding.length,
                      (index) => OnBoardingHeaderIcon(
                        index: index,
                        selectedIndex: model.selectedIndex,
                        model: model,
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: PageView.builder(
                        controller: pageController,
                        physics: const AlwaysScrollableScrollPhysics(),
                        dragStartBehavior: DragStartBehavior.start,
                        scrollDirection: Axis.horizontal,
                        itemCount: model.onboarding.length,
                        pageSnapping: true,
                        onPageChanged: (i) => model.updateIndex(i),
                        itemBuilder: (BuildContext context, int index) =>
                            model.onboarding[model.selectedIndex].page!),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(model.onboarding.length,
                        (index) => tealDot(index, model)),
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget tealDot(int i, OnboardingViewModel model) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.bounceOut,
        height: 10.0,
        width: 10.0,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          color: model.selectedIndex == i
              ? Colors.teal
              : Colors.white.withOpacity(0.39),
        ),
      ),
    );
  }
}

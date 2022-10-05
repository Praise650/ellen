import 'package:ellen/ui/layouts/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/custom_app_bar.dart';
import 'tab_navigator.dart';
import 'view_model/dashboard_view_model.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
      viewModelBuilder: () => DashboardViewModel(),
      builder: (context, model, _) {
        return WillPopScope(
          onWillPop: () async {
            final isFirstRouteInCurrentTab = !await model
                .bottomNavItems[model.selectedIndex].navigatorKey.currentState!
                .maybePop();
            if (isFirstRouteInCurrentTab) {
              if (model.currentPage != "Home") {
                model.selectTab(
                  "Home",
                  0,
                  model.bottomNavItems[model.selectedIndex].navigatorKey,
                );
                return false;
              }
            }
            // let system handle back button if we're on the first route
            return isFirstRouteInCurrentTab;
          },
          child: BaseScaffold(
            isAppBar: CustomAppBar(
              title: model.bottomNavItems[model.selectedIndex].label,
            ),
            body: Stack(
              children: List<Widget>.generate(
                model.bottomNavItems.length,
                (index) => Offstage(
                  offstage:
                      model.currentPage != model.bottomNavItems[index].label,
                  child: TabNavigator(
                    navigatorKey: model.bottomNavItems[index].navigatorKey,
                    screen: model.bottomNavItems[index].screen,
                  ),
                ),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              elevation: 0,
              backgroundColor: const Color(0xffFBFAFC),
              onTap: (index) => model.selectTab(
                model.bottomNavItems[index].label,
                index,
                model.bottomNavItems[index].navigatorKey,
              ),
              currentIndex: model.selectedIndex,
              enableFeedback: true,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              type: BottomNavigationBarType.fixed,
              landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
              selectedItemColor:
                  model.bottomNavItems[model.selectedIndex].activeColor,
              unselectedItemColor:
                  model.bottomNavItems[model.selectedIndex].color,
              items: List.generate(
                model.bottomNavItems.length,
                (index) => BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    model.bottomNavItems[index].icon,
                    color: model.bottomNavItems[index].color,
                  ),
                  tooltip: model.bottomNavItems[index].label,
                  activeIcon: SvgPicture.asset(
                    model.bottomNavItems[index].icon,
                    color: model.bottomNavItems[index].activeColor,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}

import 'package:flutter/material.dart';

class TabNavigator extends StatelessWidget {
  const TabNavigator({
    Key? key,
    required this.navigatorKey,
    required this.screen,
  }) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => screen,
        );
      },
    );
  }
}

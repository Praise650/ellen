import 'package:flutter/material.dart';
import '../styles/colors.dart';
import '../styles/texts.dart';

class BaseScaffold extends StatelessWidget {
  // final double elevation;
  final Function()? backButtonAction;
  final bool showBackBtn;
  final PreferredSizeWidget? isAppBar;
  final Widget body;
  final String? titleText;
  final PreferredSizeWidget? bottom;
  final Widget? leading;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final Color? backgroundColor;
  final Color? appbarBGColor;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final List<Widget>? actions;

  const BaseScaffold({
    Key? key,
    required this.body,
    this.titleText,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.backgroundColor,
    this.showBackBtn = false,
    this.isAppBar,
    this.appbarBGColor,
    this.leading,
    this.floatingActionButtonLocation,
    this.bottom,
    this.actions,
    // this.elevation = 0,
    this.backButtonAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: backgroundColor ?? AppColor.scaffoldBgColor,
      appBar: isAppBar ?? getAppBar(),
      drawer: const Drawer(),
      drawerEnableOpenDragGesture: false,
      body: body,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButtonLocation: floatingActionButtonLocation ??
          FloatingActionButtonLocation.centerDocked,
    );
  }

  PreferredSizeWidget? getAppBar() {
    return AppBar(
        elevation: 0,
        backgroundColor: appbarBGColor ?? AppColor.scaffoldBgColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: leading ?? backButton(backButtonAction),
        title: Text(
          titleText ?? '',
          style: kAppBarTitleTextStyle,
        ),
        actions: actions,
        bottom: bottom,);
  }

  Widget backButton(Function()? backAction) => Builder(
        builder: (context) {
          return GestureDetector(
            onTap: () => backAction ?? Navigator.maybePop(context),
            child: const Icon(
              Icons.chevron_left,
              color: AppColor.secondaryIconBtnBg,
            ),
          );
        },
      );
}
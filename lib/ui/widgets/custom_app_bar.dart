import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/texts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.icon,
    this.drawerAction,
    this.title,
  }) : super(key: key);
  final IconData? icon;
  final Function()? drawerAction;
  final String? title;

  // final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        // onTap: () => drawerAction ?? _key.currentState!.openDrawer(),
        onTap: () => drawerAction ?? Scaffold.of(context).openDrawer(),
        child: const Icon(
          Icons.menu,
          color: AppColor.secondaryIconBtnBg,
        ),
      ),
      title: Text(
        title ?? 'Crypto List',
        style: kAppBarTitleTextStyle,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(icon ?? Icons.notifications_rounded),
        )
      ],
    );
  }

  @override
  Size get preferredSize => throw UnimplementedError();
}

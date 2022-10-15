import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/texts.dart';

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   CustomAppBar({
//     Key? key,
//     this.icon,
//     this.drawerAction,
//     this.title,
//   }) : super(key: key);
//   final IconData? icon;
//   final Function()? drawerAction;
//   final String? title;
//
//  final GlobalKey<ScaffoldState> _key = GlobalKey();
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       leading: GestureDetector(
//         // onTap: () => drawerAction ?? _key.currentState!.openDrawer(),
//         onTap: () => drawerAction ?? Scaffold.of(context).openDrawer(),
//         child: const Icon(
//           Icons.menu,
//           color: AppColor.secondaryIconBtnBg,
//         ),
//       ),
//       title: Text(
//         title ?? 'Crypto List',
//         style: kAppBarTitleTextStyle,
//       ),
//       centerTitle: true,
//       actions: [
//         IconButton(
//           onPressed: () {},
//           icon: Icon(icon ?? Icons.notifications_rounded),
//         )
//       ],
//     );
//   }
//
//
//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize =>
//       _PreferredAppBarSize(kToolbarHeight, bottom?.preferredSize.height);
//
//   class _PreferredAppBarSize extends Size {
//   _PreferredAppBarSize(this.toolbarHeight, this.bottomHeight)
//       : super.fromHeight(
//   (toolbarHeight ?? kToolbarHeight) + (bottomHeight ?? 0));
//
//   final double? toolbarHeight;
//   final double? bottomHeight;
//   }
// }

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String? titleText;
  final PreferredSizeWidget? bottom;
  final void Function()? customBackBtnAction;
  final IconData? icon;
  final Function()? drawerAction;
  final String? title;

  // final GlobalKey<ScaffoldState> _key = GlobalKey();

  const CustomAppBar({
    Key? key,
    this.titleText,
    this.bottom,
    this.customBackBtnAction,
    this.icon,
    this.drawerAction,
    this.title,
  }) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>
      _PreferredAppBarSize(kToolbarHeight, bottom?.preferredSize.height);
}

class _PreferredAppBarSize extends Size {
  _PreferredAppBarSize(this.toolbarHeight, this.bottomHeight)
      : super.fromHeight(
            (toolbarHeight ?? kToolbarHeight) + (bottomHeight ?? 0));

  final double? toolbarHeight;
  final double? bottomHeight;
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColor.scaffoldBgColor,
      leading: GestureDetector(
        // onTap: () => drawerAction ?? _key.currentState!.openDrawer(),
        onTap: () => widget.drawerAction ?? Scaffold.of(context).openDrawer(),
        child: const Icon(
          Icons.menu,
          color: AppColor.iconColor,
        ),
      ),
      title: Text(
        widget.title ?? '',
        style: kAppBarTitleTextStyle,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            widget.icon ?? Icons.notifications_rounded,
            color: AppColor.iconColor,
          ),
        )
      ],
      bottom: widget.bottom,
    );
  }
}

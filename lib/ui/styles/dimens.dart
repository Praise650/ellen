import 'package:flutter/widgets.dart';


/// Will contain common dimensions like padding, margin, width e.t.c

class Dimens {
  static const double iconSize = 24;
  static const double horizontalPadding = 20;

  static const EdgeInsets screenPadding =
  EdgeInsets.symmetric(vertical: 8.0, horizontal: 20);

  static const double inputFieldRadius = 10;
  static const double inputFieldHeight = 65;

  // static inputFieldPadding(BuildContext context) => EdgeInsets.symmetric(
  //     horizontal: context.screenWidth(3.5),
  //     vertical: context.screenHeight(2.7));
}
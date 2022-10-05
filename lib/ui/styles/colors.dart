import 'package:flutter/material.dart';

/// Will contain all the theme colors

class AppColor {
  static Color error = Color(0xFFE52836);
  static Color warning = Color(0xFFF6A609);
  static Color success = Color(0xFF2AC769);

  /// Swatches
  static const int primaryColorValue = 0xFF702BD4;
  static const MaterialColor primarySwatch = MaterialColor(
    primaryColorValue,
    <int, Color>{
      50: Color(0xFFE2D5F6),
      100: Color(0xFFCFB8F1),
      200: Color(0xFFB795E9),
      300: Color(0xFFA072E2),
      400: Color(0xFF884EDB),
      500: Color(primaryColorValue),
      600: Color(0xFF5D24B1),
      700: Color(0xFF4B1D8D),
      800: Color(0xFF38166A),
      900: Color(0xFF250E47),
      1000: Color(0xFF16092A),
    },
  );

  static const int secondaryColorValue = 0xFF333333;

  static const MaterialColor secondarySwatch = MaterialColor(
    secondaryColorValue,
    <int, Color>{
      50: Color(0xFFD6D6D6),
      100: Color(0xFFBBBBBB),
      200: Color(0xFF999999),
      300: Color(0xFF777777),
      400: Color(0xFF555555),
      500: Color(secondaryColorValue),
      600: Color(0xFF2B2B2B),
      700: Color(0xFF222222),
      800: Color(0xFF1A1A1A),
      900: Color(0xFF111111),
      1000: Color(0xFF0A0A0A),
    },
  );


  static const int secondaryGraphColorValue = 0xFFEA4F18;

  static const MaterialColor secondaryGraphSwatch = MaterialColor(
    secondaryColorValue,
    <int, Color>{
      50: Color(0xFFFBDCD1),
      100: Color(0xFFF8C4B2),
      200: Color(0xFFF4A78B),
      300: Color(0xFFF18A65),
      400: Color(0xFFED6C3F),
      500: Color(secondaryColorValue),
      600: Color(0xFFC34214),
      700: Color(0xFF9C3510),
      800: Color(0xFF75280C),
      900: Color(0xFF4E1A08),
      1000: Color(0xFF2F1005),
    },
  );

/// bgColors
  static const scaffoldBgColor = Color(0xffEFEFEF);
  static const splashBgColor = Color(0xff702BD4);

  static const primary = Color(primaryColorValue);
  static const appSecondaryColor = Color(0xff36454F);


  /// Button Colors
  static const Color primaryBtnBg = Color(0xff5D24B1);
  static const Color primaryAltBtnBg = Color(0xFFB795E9);
  static const Color secondaryBtnBg = Color(0xFFEFEFEF);
  static const Color secondaryAltBtnBg = Color(0xFFFBFAFC);
  static const Color secondaryIconBtnBg = Color(0xFF702BD4);

  //Title texts, captions, inputs fields and everywhere else where black is required
  static const Color textPrimary = Color(0xFF333333);
  //text secondary
  static const Color textSecondary = Color(0xFF999999);

  // The most common headline textColor.
  static const Color headlineTextPrimary = Color(0xFFFBFAFC);

  //inactive states
  static const Color textInactive = Color(0xFF52575C);

  // inputs fields
  static const Color inputText = Color(0xFF0A0A0A);

  //list dividers
  static const Color divider = Color(0xFFE8E8E8);
  static const boxBorder = Color(0xFF702BD4);

  @Deprecated("Use hintText instead")
  static const Color inputPlaceholder = Color(0xFF5E5E5E);

  static const Color hintText = Color(0xFFB795E9);

  static const Color onBoardingText = Color(0xFF040B45);

  static const Color regularText = Color(0xFF040B45);

  static Color regularTextLight = const Color(0xFF040B45).withOpacity(0.7);

  static const Color normalText = Color(0xFF504F4F);

  static const Color normalTextLight = Color.fromRGBO(4, 11, 69, 0.61);

  static const Color normalExtraLight = Color(0xFF767676);

  static const Color onBoardingTextAlt = Color(0xFF504F4F);

  static const Color onBoardingDotActive = Color(0xFFFE337B);

  static const Color onBoardingDot = Color(0xFFFFD7E5);

  static const Color checkboxInactive = Color(0xFFD9D9D9);

  static const Color errorLight = Color(0xFFFCF3F6);
  static const Color errorLightAlt = Color(0xFFF9DEE0);

  static const Color closeBg = Color(0xFFEDF0FF);

  static const Color iconColor = Color(0xFF333333);
  static const Color bottomNavIconColor = Color(0xFFBBBBBB);

  static const Color green = Color(0xFF37CB95);
  static const Color red = Color(0xFFE52836);

  static const Color bd2 = Color(0xFFECECEC);

  static const ratingPercentage = Color(0xFF5C5C5C);

  static const ratingNumber = Color(0xFF4B4B4B);

  static const ratingDisplay = Color(0xFF575757);

  static const Color fieldColor = Color(0xFFE2D5F6);

  static const Color cartDecoration = Color(0xFFF2F4FF);
}

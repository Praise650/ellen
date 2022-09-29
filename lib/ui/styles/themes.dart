import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';
import 'dimens.dart';
import 'texts.dart';

/// Will contain all the theme(s) and themeData even when there's more than one

final ThemeData kThemeData = ThemeData(
  primaryColor: AppColor.primary,
  primarySwatch: AppColor.primarySwatch,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: AppColor.primarySwatch,
    onPrimary: AppColor.primarySwatch.shade300,
    secondary: AppColor.secondarySwatch,
    onSecondary: AppColor.secondarySwatch.shade100,
    error: AppColor.error,
    onError: AppColor.errorLight,
    background: AppColor.scaffoldBgColor,
    onBackground: AppColor.scaffoldBgColor,
    surface: Colors.white,
    onSurface: Colors.white70,
  ),
  primaryIconTheme: const IconThemeData(color: AppColor.iconColor),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: Colors.white,
  iconTheme: const IconThemeData(size: Dimens.iconSize),
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  canvasColor: Colors.white,
  inputDecorationTheme: const InputDecorationTheme(
    hintStyle: kHintTextStyle,
  ),
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColor.scaffoldBgColor,
        statusBarBrightness: Brightness.dark),
    color: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(
      color: Colors.black,
      size: Dimens.iconSize,
    ),
    titleTextStyle: kAppBarTitleTextStyle,
  ),
  textTheme: TextTheme(
    headline1: kHeadline1TextStyle,
    headline2: kHeadline2TextStyle,
    headline3: kHeadline3TextStyle,
    headline4: kHeadline4TextStyle,
    headline5: kHeadline5TextStyle,
    headline6: kHeadline6TextStyle,
    bodyText1: kBodyText1TextStyle,
    bodyText2: kBodyText2TextStyle,
    subtitle1: kSubtitle1TextStyle,
    subtitle2: kSubtitle2TextStyle,
    caption: kCaptionTextStyle,
    button: kButtonTextStyle,
  ),
);
/// Will contain all the textStyles that will be used in the theme or directly in the apps
import 'package:flutter/material.dart';
import 'colors.dart';
import 'fonts.dart';

TextStyle kHeadline1TextStyle = const TextStyle(
  fontFamily: AppFont.heading,
  fontWeight: FontWeight.bold,
  color: AppColor.headlineTextPrimary,
  fontSize: 38,
);

TextStyle kHeadline2TextStyle = const TextStyle(
  fontFamily: AppFont.heading,
  fontWeight: FontWeight.bold,
  color: AppColor.headlineTextPrimary,
  fontSize: 26,
);

TextStyle kHeadline3TextStyle = const TextStyle(
  fontFamily: AppFont.heading,
  fontWeight: FontWeight.bold,
  color: AppColor.headlineTextPrimary,
  fontSize: 20,
);

const TextStyle kAppBarTitleTextStyle = TextStyle(
    fontFamily: AppFont.heading,
    fontWeight: FontWeight.w700,
    color: AppColor.textPrimary,
    fontSize: 24,
    height: 21.75 / 19);

TextStyle kHeadline4TextStyle = const TextStyle(
  fontFamily: AppFont.heading,
  fontWeight: FontWeight.normal,
  color: AppColor.headlineTextPrimary,
  fontSize: 16,
);

TextStyle kHeadline5TextStyle = const TextStyle(
  fontFamily: AppFont.body,
  fontWeight: FontWeight.bold,
  color: AppColor.textPrimary,
  fontSize: 38,
);

TextStyle kHeadline6TextStyle = const TextStyle(
  fontFamily: AppFont.body,
  fontWeight: FontWeight.normal,
  color: AppColor.textPrimary,
  fontSize: 26,
);

TextStyle kSubtitle1TextStyle = const TextStyle(
  fontFamily: AppFont.body,
  fontWeight: FontWeight.bold,
  color: AppColor.textPrimary,
  fontSize: 18,
);

TextStyle kSubtitle2TextStyle = const TextStyle(
  fontFamily: AppFont.heading,
  fontWeight: FontWeight.bold,
  color: AppColor.textPrimary,
  fontSize: 14,
);

TextStyle kBodyText1TextStyle = const TextStyle(
  fontFamily: AppFont.body,
  fontWeight: FontWeight.normal,
  color: AppColor.textPrimary,
  fontSize: 14,
  height: 23 / 14, // Following the line height documentation.
);

TextStyle kBodyText2TextStyle = const TextStyle(
  fontFamily: AppFont.body,
  fontWeight: FontWeight.normal,
  color: AppColor.textPrimary,
  fontSize: 12,
);

TextStyle kCaptionTextStyle = const TextStyle(
  fontFamily: AppFont.heading,
  fontWeight: FontWeight.normal,
  color: AppColor.textPrimary,
  fontSize: 12,
);

/// This is the primary button Style
TextStyle kButtonTextStyle = const TextStyle(
  fontFamily: AppFont.body,
  fontWeight: FontWeight.bold,
  color: Colors.white,
  fontSize: 15,
);

const TextStyle kInputFieldTextStyle = TextStyle(
  fontFamily: AppFont.body,
  color: AppColor.inputText,
  fontWeight: FontWeight.w400,
  fontSize: 15,
  height: 19.38 / 15,
);

const TextStyle kHintTextStyle = TextStyle(
  fontFamily: AppFont.body,
  color: AppColor.hintText,
  fontWeight: FontWeight.w300,
  fontSize: 15,
  height: 19.38 / 15,
);

const TextStyle kInputLabelStyle = TextStyle(
  fontFamily: AppFont.heading,
  fontWeight: FontWeight.w300,
  color: AppColor.headlineTextPrimary,
  fontSize: 14,
);

TextStyle kHeadline7TextStyle = const TextStyle(
  fontFamily: AppFont.body,
  fontWeight: FontWeight.w500,
  color: AppColor.textPrimary,
  fontSize: 16,
);

// TextStyle onboardingTextStyle = const TextStyle(
//   fontSize: 18,
//   color: Colors.white,
// );

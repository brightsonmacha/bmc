import 'package:bmc/utils/constant.dart';
import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  primarySwatch: kPrimaryColor,
  fontFamily: kFontFamily,
  scaffoldBackgroundColor: kPrimaryColor,
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  primaryColor: kPrimaryColor,
);
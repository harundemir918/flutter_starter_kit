/*
Author: Harun Demir
Date: 20.05.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color_constants.dart';
import 'string_constants.dart';

final lightTheme = ThemeData(
  fontFamily: fontFamily,
  colorScheme: ColorScheme.fromSeed(
    seedColor: kAppColor,
    brightness: Brightness.light,
  ),
  useMaterial3: true,
  brightness: Brightness.light,
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: kWhiteColor,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: kLightBackgroundColor,
    surfaceTintColor: Colors.transparent,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
  ),
);

final darkTheme = ThemeData(
  fontFamily: fontFamily,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
  brightness: Brightness.dark,
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: kDarkBackgroundColor,
  ),
  appBarTheme: const AppBarTheme(
    actionsIconTheme: IconThemeData(color: kDarkTextColor),
    backgroundColor: kDarkBackgroundColor,
    surfaceTintColor: Colors.transparent,
    systemOverlayStyle: SystemUiOverlayStyle.light,
  ),
);

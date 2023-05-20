import 'package:flutter/material.dart';
import 'package:period_app/theme/period_fonts.dart';

extension PeriodTextTheme on ThemeData {
  TextStyle get title {
    return TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: primaryColor,
      fontFamily: mainFont,
    );
  }

  TextStyle get subtitle {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: primaryColor,
      fontFamily: mainFont,
    );
  }

  TextStyle get body {
    return TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: primaryColor,
      fontFamily: mainFont,
    );
  }
}

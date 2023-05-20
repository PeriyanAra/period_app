import 'package:flutter/material.dart';
import 'package:period_app/theme/period_color.dart';
import 'package:period_app/theme/period_fonts.dart';

extension PeriodTextTheme on ThemeData {
  TextStyle get title {
    return TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w800,
      color: whiteModeColors.primaryFontColor,
      fontFamily: mainFont,
    );
  }

  TextStyle get subtitle {
    return TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: whiteModeColors.primaryFontColor,
      fontFamily: mainFont,
    );
  }

  TextStyle get body {
    return TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w500,
      color: whiteModeColors.primaryFontColor,
      fontFamily: mainFont,
    );
  }
}

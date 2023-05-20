import 'package:flutter/material.dart';

class PeriodTheme {
  static ThemeData light() {
    const Color scaffoldBackgroundColor = Color(0xFFFFFFFF);

    const Color primaryBackgroundColor = Color(0xFFFFEFEF);

    const Color primaryFontColor = Color(0xFF000000);

    const Color buttonColor = Color(0xFF52538A);

    return ThemeData(
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      cardColor: primaryBackgroundColor,
      primaryColor: primaryFontColor,
      indicatorColor: buttonColor,
    );
  }

  static ThemeData dark() {
    const Color scaffoldBackgroundColor = Color.fromARGB(255, 0, 0, 0);

    const Color primaryBackgroundColor = Color(0xFF927C7C);

    const Color primaryFontColor = Color.fromARGB(255, 255, 255, 255);

    const Color buttonColor = Color(0xFF52538A);

    return ThemeData(
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      cardColor: primaryBackgroundColor,
      primaryColor: primaryFontColor,
      indicatorColor: buttonColor,
    );
  }
}

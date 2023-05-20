import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:period_app/theme/period_color.dart';
import 'package:period_app/theme/period_fonts.dart';

final ThemeData periodTheme = ThemeData(
  scaffoldBackgroundColor: whiteModeColors.primaryBackgroundColor,
  fontFamily: mainFont,
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.dark,
  ),
);

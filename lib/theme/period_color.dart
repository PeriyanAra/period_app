import 'package:flutter/material.dart';

const whiteModeColors = _WhiteModeColor();

abstract class _PeriodColor {
  Color get scafoldBackgroundColor;
  Color get primaryBackgroundColor;
  Color get primaryFontColor;
  Color get buttonColor;
}

class _WhiteModeColor implements _PeriodColor {
  const _WhiteModeColor();

  @override
  Color get scafoldBackgroundColor => const Color(0xFFFFFFFF);
  @override
  Color get primaryBackgroundColor => const Color(0xFFfFEFEF);
  @override
  Color get primaryFontColor => const Color(0xFF000000);
  @override
  Color get buttonColor => const Color(0xFF52538A);
}

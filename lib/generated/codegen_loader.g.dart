// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> de = {
  "trackPeriodTitle": "Verfolgen Sie meine Periode",
  "trackPeriodSubTitle": "verhütung und Wohlbefinden",
  "getPregnantTitle": "schwanger werden",
  "getPregnantSubTitle": "erfahren Sie mehr über reproduktive Gesundheit",
  "logInDateTitle": "Geben Sie Ihr Geburtsdatum ein",
  "nextButtonText": "Nächste"
};
static const Map<String,dynamic> en = {
  "trackPeriodTitle": "Track my period",
  "trackPeriodSubTitle": "contraception and wellbeing",
  "getPregnantTitle": "Get pregnant",
  "getPregnantSubTitle": "learn about reproductive health",
  "logInDateTitle": "Log in your date of birth",
  "nextButtonText": "Next"
};
static const Map<String,dynamic> fr = {
  "trackPeriodTitle": "Suivre mes règles",
  "trackPeriodSubTitle": "contraception et bien-être",
  "getPregnantTitle": "Tomber enceinte",
  "getPregnantSubTitle": "en savoir plus sur la santé reproductive",
  "logInDateTitle": "Connectez-vous votre date de naissance",
  "nextButtonText": "Suivante"
};
static const Map<String,dynamic> es = {
  "trackPeriodTitle": "Seguimiento de mi período",
  "trackPeriodSubTitle": "anticoncepción y bienestar",
  "getPregnantTitle": "Embarazarse",
  "getPregnantSubTitle": "aprender sobre salud reproductiva",
  "logInDateTitle": "Ingresa tu fecha de nacimiento",
  "nextButtonText": "Próxima"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"de": de, "en": en, "fr": fr, "es": es};
}

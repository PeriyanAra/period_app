import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:period_app/generated/codegen_loader.g.dart';
import 'dart:async';
import 'package:period_app/screens/home_screen/home_screen.dart';
import 'package:period_app/theme/period_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('de'),
        Locale('es'),
        Locale('fr'),
      ],
      fallbackLocale: const Locale('en'),
      path: 'assets/translations',
      assetLoader: const CodegenLoader(),
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: periodTheme,
      home: const HomeScreen(),
    );
  }
}

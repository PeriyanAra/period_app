import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:period_app/bloc/navigation_bloc.dart';
import 'package:period_app/bloc_provider_wrapper.dart';
import 'package:period_app/generated/codegen_loader.g.dart';
import 'package:period_app/navigation/app_router.dart';
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

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvideWrapper(
      child: BlocListener<NavigationBloc, NavigationState>(
        listener: listenToNavigationBloc,
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          title: 'Period App',
          theme: periodTheme,
          routeInformationParser: appRouter.defaultRouteParser(),
          routerDelegate: appRouter.delegate(),
        ),
      ),
    );
  }

  void listenToNavigationBloc(BuildContext context, NavigationState state) {
    if (state is NavigationSetUpBirthDayState) {
      appRouter.push(const BirthDayPickerRoute());
    }
  }
}

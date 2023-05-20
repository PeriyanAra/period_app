import 'package:auto_route/auto_route.dart';
import 'package:period_app/screens/birthday_picker_screen/birthday_picker_screen.dart';
import 'package:period_app/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: [
    AutoRoute(
      path: 'home',
      page: HomeScreen,
      initial: true,
    ),
    AutoRoute(
      path: 'birthdayPicker',
      page: BirthDayPickerScreen,
    )
  ],
)
class AppRouter extends _$AppRouter {}

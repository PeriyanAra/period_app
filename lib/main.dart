import 'package:flutter/material.dart';
import 'package:period_app/screens/home_screen/home_screen.dart';
import 'package:period_app/theme/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Period App',
      theme: periodTheme,
      home: const HomeScreen(),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:period_app/bloc/navigation_bloc.dart';
import 'package:period_app/screens/home_screen/widgets/home_card.dart';
import 'package:period_app/theme/period_color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteModeColors.scafoldBackgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: -220,
            left: -220,
            child: Image.asset(
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? 'assets/animations/circle_1_light.gif'
                  : 'assets/animations/circle_1_dark.gif',
              width: 500,
            ),
          ),
          Positioned(
            bottom: -120,
            right: -120,
            child: Image.asset(
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? 'assets/animations/circle_3_light.gif'
                  : 'assets/animations/circle_3_dark.gif',
              width: 300,
            ),
          ),
          Positioned(
            bottom: 120,
            left: 90,
            child: Image.asset(
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? 'assets/animations/circle_2_light.gif'
                  : 'assets/animations/circle_2_dark.gif',
              width: 100,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
              left: 32,
              right: 32,
              bottom: MediaQuery.of(context).padding.bottom,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomeCard(
                  animationDelay: const Duration(milliseconds: 0),
                  title: tr('trackPeriodTitle'),
                  subtitle: tr('trackPeriodSubTitle'),
                  onTap: () {
                    context.read<NavigationBloc>().add(const NavigationEvent.setUpBirthDay());
                  },
                ),
                const SizedBox(height: 80),
                HomeCard(
                  animationDelay: const Duration(milliseconds: 300),
                  title: tr('getPregnantTitle'),
                  subtitle: tr('getPregnantSubTitle'),
                  onTap: () {
                    context.read<NavigationBloc>().add(const NavigationEvent.setUpBirthDay());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

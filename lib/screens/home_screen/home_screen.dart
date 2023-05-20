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
      body: Padding(
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
    );
  }
}

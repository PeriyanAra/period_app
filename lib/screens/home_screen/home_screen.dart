import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
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
              title: tr('trackPeriodTitle'),
              subtitle: tr('trackPeriodSubTitle'),
              onTap: () {},
            ),
            const SizedBox(height: 80),
            HomeCard(
              title: tr('getPregnantTitle'),
              subtitle: tr('getPregnantSubTitle'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

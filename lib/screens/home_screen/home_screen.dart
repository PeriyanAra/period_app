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
          left: 20,
          right: 20,
          bottom: MediaQuery.of(context).padding.bottom,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeCard(
              title: 'Track my period',
              subtitle: 'contreception and wellbeing',
              onTap: () {},
            ),
            const SizedBox(height: 40),
            HomeCard(
              title: 'Get pregnent',
              subtitle: 'learn about reproductive health',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

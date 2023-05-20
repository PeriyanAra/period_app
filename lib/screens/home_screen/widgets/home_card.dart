import 'package:flutter/material.dart';
import 'package:period_app/buttons/custom_button.dart';
import 'package:period_app/theme/period_color.dart';
import 'package:period_app/theme/period_text_theme.dart';
import 'package:period_app/theme/period_theme.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    required this.title,
    required this.subtitle,
    required this.onTap,
    super.key,
  });

  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 23,
        ),
        decoration: BoxDecoration(
          color: whiteModeColors.primaryBackgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: periodTheme.title,
                ),
                Text(
                  subtitle,
                  style: periodTheme.subtitle,
                ),
              ],
            ),
            CustomButton(
              iconColor: Colors.white,
              containerColor: whiteModeColors.buttonColor,
            ),
          ],
        ),
      ),
    );
  }
}

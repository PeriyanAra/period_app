import 'package:flutter/material.dart';
import 'package:period_app/buttons/custom_button.dart';
import 'package:period_app/screens/home_screen/widgets/show_up_animation_wrapper.dart';
import 'package:period_app/theme/period_color.dart';
import 'package:period_app/theme/period_text_theme.dart';
import 'package:period_app/theme/period_theme.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.animationDelay,
    super.key,
  });

  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final Duration animationDelay;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              ShowUpAnimationWrapper(
                delayStart: animationDelay,
                animationDuration: const Duration(seconds: 1),
                curve: Curves.bounceIn,
                direction: Direction.horizontal,
                offset: 0.5,
                child: Text(
                  title,
                  style: periodTheme.title,
                ),
              ),
              ShowUpAnimationWrapper(
                delayStart:Duration(milliseconds: animationDelay.inMilliseconds + 200),
                animationDuration: const Duration(seconds: 1),
                curve: Curves.bounceIn,
                direction: Direction.horizontal,
                offset: 0.5,
                child: Text(
                  subtitle,
                  style: periodTheme.subtitle,
                ),
              ),
            ],
          ),
          CustomButton(
            iconColor: Colors.white,
            containerColor: whiteModeColors.buttonColor,
          ),
        ],
      ),
    );
  }
}

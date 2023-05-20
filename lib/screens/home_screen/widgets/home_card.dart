import 'package:flutter/material.dart';
import 'package:period_app/buttons/custom_button.dart';
import 'package:period_app/screens/home_screen/widgets/show_up_animation_wrapper.dart';
import 'package:period_app/theme/period_text_theme.dart';

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
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      color: Theme.of(context).cardColor,
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        onTap: onTap,
        splashColor: Theme.of(context).indicatorColor.withOpacity(0.25),
        highlightColor: Theme.of(context).indicatorColor.withOpacity(0.25),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 23,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
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
                        style: Theme.of(context).title,
                      ),
                    ),
                    ShowUpAnimationWrapper(
                      delayStart: Duration(milliseconds: animationDelay.inMilliseconds + 200),
                      animationDuration: const Duration(seconds: 1),
                      curve: Curves.bounceIn,
                      direction: Direction.horizontal,
                      offset: 0.5,
                      child: Text(
                        subtitle,
                        style: Theme.of(context).subtitle,
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                iconColor: Colors.white,
                containerColor: Theme.of(context).indicatorColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

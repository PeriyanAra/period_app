import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.containerColor,
    this.iconColor,
    super.key,
  });

  final Color containerColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 3,
        top: 6,
        bottom: 6,
        right: 2,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: containerColor,
      ),
      child: Icon(
        Icons.arrow_forward_ios_rounded,
        color: iconColor,
      ),
    );
  }
}

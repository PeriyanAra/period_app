import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.iconColor,
    required this.containerColor,
    super.key,
  });

  final Color containerColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.0,
      width: 35.0,
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

import 'package:flutter/material.dart';

class BirthDayPickerShader extends StatelessWidget {
  final MeasurePickerShaderPosition position;

  const BirthDayPickerShader({
    required this.position,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: position == MeasurePickerShaderPosition.top ? 0 : null,
      bottom: position == MeasurePickerShaderPosition.bottom ? 0 : null,
      child: Container(
        height: 90,
        width: MediaQuery.of(context).size.width - 16,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [0, 1],
            colors: position == MeasurePickerShaderPosition.top
                ? [
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0),
                    Theme.of(context).scaffoldBackgroundColor
                  ]
                : [
                    Theme.of(context).scaffoldBackgroundColor,
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0)
                  ],
          ),
        ),
      ),
    );
  }
}

enum MeasurePickerShaderPosition {
  top,
  bottom,
}

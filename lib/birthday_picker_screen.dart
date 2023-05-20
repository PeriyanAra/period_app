import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:period_app/buttons/custom_button.dart';
import 'package:period_app/theme/period_color.dart';
import 'package:period_app/theme/period_text_theme.dart';
import 'package:period_app/theme/period_theme.dart';

import 'birthday_picker_shader.dart';

class BirthDayPickerScreen extends StatefulWidget {
  const BirthDayPickerScreen({Key? key}) : super(key: key);

  @override
  State<BirthDayPickerScreen> createState() => _BirthDayPickerScreenState();
}

class _BirthDayPickerScreenState extends State<BirthDayPickerScreen> {
  var date = [];

  @override
  void initState() {
    super.initState();
    for (int i = 1940; i <= 2023; i++) {
      date.add(i.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteModeColors.scafoldBackgroundColor,
      body: Column(
        children: [
          const Spacer(flex: 3),
          Text(
            tr('logInDateTitle'),
            style: periodTheme.body,
          ),
          const Spacer(flex: 1),
          Center(
            child: SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width - 16,
              child: Stack(
                children: [
                  Center(
                    child: SizedBox(
                      width: 250,
                      height: 200,
                      child: CupertinoPicker(
                        diameterRatio: 4,
                        squeeze: 1.1,
                        looping: true,
                        itemExtent: 50,
                        children: date
                            .map((date) => Center(
                                  child: Text(date, style: periodTheme.title),
                                ))
                            .toList(),
                        onSelectedItemChanged: (value) {},
                      ),
                    ),
                  ),
                  const BirthDayPickerShader(
                    position: MeasurePickerShaderPosition.bottom,
                  ),
                  const BirthDayPickerShader(
                    position: MeasurePickerShaderPosition.top,
                  ),
                ],
              ),
            ),
          ),
          const Spacer(flex: 3),
          SizedBox(
            height: 40.0,
            width: 150.0,
            child: Material(
              borderRadius: BorderRadius.circular(50),
              color: whiteModeColors.buttonColor,
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(50),
                radius: 100,
                highlightColor: whiteModeColors.scafoldBackgroundColor.withOpacity(0.25),
                splashColor: whiteModeColors.scafoldBackgroundColor.withOpacity(0.25),
                splashFactory: InkSparkle.splashFactory,
                child: Row(
                  children: [
                    const Spacer(flex: 4),
                    Text(
                      tr('nextButtonText'),
                      style: periodTheme.subtitle.copyWith(
                        color: whiteModeColors.scafoldBackgroundColor,
                      ),
                    ),
                    const Spacer(flex: 1),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: CustomButton(
                        iconColor: whiteModeColors.buttonColor,
                        containerColor: whiteModeColors.scafoldBackgroundColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}

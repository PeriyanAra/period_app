import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:period_app/buttons/custom_button.dart';
import 'package:period_app/screens/home_screen/widgets/show_up_animation_wrapper.dart';
import 'package:period_app/theme/period_color.dart';
import 'package:period_app/theme/period_text_theme.dart';
import 'package:period_app/theme/period_theme.dart';
import 'package:period_app/screens/birthday_picker_screen/birthday_picker_shader.dart';

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
      body: Stack(
        children: [
          Positioned(
            top: -220,
            right: -220,
            child: Image.asset(
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? 'assets/animations/circle_2_light.gif'
                  : 'assets/animations/circle_2_dark.gif',
              width: 500,
            ),
          ),
          Positioned(
            bottom: -120,
            right: -120,
            child: Image.asset(
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? 'assets/animations/circle_1_light.gif'
                  : 'assets/animations/circle_1_dark.gif',
              width: 300,
            ),
          ),
          Positioned(
            bottom: 200,
            left: 30,
            child: Image.asset(
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? 'assets/animations/circle_3_light.gif'
                  : 'assets/animations/circle_3_dark.gif',
              width: 100,
            ),
          ),
          Column(
            children: [
              const Spacer(flex: 3),
              ShowUpAnimationWrapper(
                curve: Curves.bounceIn,
                child: Text(
                  tr('logInDateTitle'),
                  style: periodTheme.body,
                ),
              ),
              const Spacer(flex: 1),
              Center(
                child: SizedBox(
                  height: 240,
                  width: MediaQuery.of(context).size.width - 16,
                  child: Stack(
                    children: [
                      Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width - 32,
                          child: CupertinoPicker(
                            diameterRatio: 6,
                            squeeze: 1.1,
                            looping: true,
                            itemExtent: 60,
                            children: date
                                .map((date) => Center(
                                      child: Text(
                                        date,
                                        style: periodTheme.title.copyWith(
                                          fontSize: 32,
                                        ),
                                      ),
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
              ShowUpAnimationWrapper(
               delayStart: const Duration(milliseconds: 300),
                curve: Curves.bounceIn,
                child: SizedBox(
                  height: 46.0,
                  width: 200.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(50),
                    color: whiteModeColors.buttonColor,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(50),
                      radius: 100,
                      highlightColor: whiteModeColors.scafoldBackgroundColor.withOpacity(0.25),
                      splashColor: whiteModeColors.scafoldBackgroundColor.withOpacity(0.25),
                      child: Row(
                        children: [
                          const Spacer(flex: 3),
                          Text(
                            tr('nextButtonText'),
                            style: periodTheme.subtitle.copyWith(
                              color: whiteModeColors.scafoldBackgroundColor,
                            ),
                          ),
                          const Spacer(flex: 1),
                          CustomButton(
                            iconColor: whiteModeColors.buttonColor,
                            containerColor: whiteModeColors.scafoldBackgroundColor,
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(flex: 1),
            ],
          ),
        ],
      ),
    );
  }
}

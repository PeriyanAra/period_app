import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:period_app/buttons/custom_button.dart';
import 'package:period_app/screens/home_screen/widgets/show_up_animation_wrapper.dart';
import 'package:period_app/theme/period_text_theme.dart';
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
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: -300,
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
            bottom: 100,
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
                  style: Theme.of(context).body,
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
                                        style: Theme.of(context).title.copyWith(
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
                    color: Theme.of(context).indicatorColor,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(50),
                      radius: 100,
                      highlightColor: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.25),
                      splashColor: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.25),
                      child: Row(
                        children: [
                          const Spacer(flex: 3),
                          Text(
                            tr('nextButtonText'),
                            style: Theme.of(context).subtitle.copyWith(
                                  color: Theme.of(context).scaffoldBackgroundColor,
                                ),
                          ),
                          const Spacer(flex: 1),
                          CustomButton(
                            iconColor: Theme.of(context).indicatorColor,
                            containerColor: Theme.of(context).scaffoldBackgroundColor,
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

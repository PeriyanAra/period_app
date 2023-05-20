import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:period_app/buttons/custom_button.dart';
import 'package:period_app/theme/period_color.dart';
import 'package:period_app/theme/period_text_theme.dart';
import 'package:period_app/theme/period_theme.dart';

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
          const Spacer(flex: 4),
          Text(
            'Log in your date of birth',
            style: periodTheme.body,
          ),
          const Spacer(flex: 1),
          Center(
            child: SizedBox(
              width: 300,
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
          const Spacer(flex: 3),
          TextButton(
            onPressed: () {},
            child: CustomButton(
              iconColor: whiteModeColors.buttonColor,
              containerColor: whiteModeColors.primaryBackgroundColor,
            ),
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}

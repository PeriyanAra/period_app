import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: CupertinoPicker(
            looping: true,
            itemExtent: 100,
            children: date
                .map((date) => Center(
                      child: Text(date),
                    ))
                .toList(),
            onSelectedItemChanged: (value) {},
          ),
        ),
      ),
    );
  }
}

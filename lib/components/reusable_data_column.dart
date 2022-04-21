import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/rounded_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableDataColumn extends StatelessWidget {
  final String label;
  final String value;
  final Function add;
  final Function minus;

  ReusableDataColumn(
      {required this.label,
      required this.value,
      required this.add,
      required this.minus});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label,
          style: kLabelTextStyle,
        ),
        Text(
          value.toString(),
          style: kValueTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPress: () => minus(),
            ),
            const SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPress: () => add(),
            ),
          ],
        ),
      ],
    );
  }
}

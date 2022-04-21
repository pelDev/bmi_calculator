import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Function onPress;
  final String title;

  BottomButton({required this.onPress, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Container(
        color: kBottomButtonColor,
        padding: EdgeInsets.only(bottom: 20.0),
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomButtonHeight,
        child: Center(
            child: Text(
          title,
          style: kButtonTextStyle,
        )),
      ),
    );
  }
}

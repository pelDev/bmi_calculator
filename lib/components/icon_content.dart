import 'package:flutter/material.dart';

import '../constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String content;

  // ignore: use_key_in_widget_constructors
  const IconContent({required this.icon, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: kGenderIconSize,
        ),
        const SizedBox(
          height: kGap,
        ),
        Text(content, style: kLabelTextStyle)
      ],
    );
  }
}

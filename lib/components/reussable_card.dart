import 'package:flutter/material.dart';

class ReussableCard extends StatelessWidget {
  final Color color;
  final Widget? child;
  final Function? onPress;

  // ignore: use_key_in_widget_constructors
  const ReussableCard({required this.color, this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress!();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
        margin: const EdgeInsets.all(15.0),
        child: child,
      ),
    );
  }
}

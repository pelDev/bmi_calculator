import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0B0D22),
        appBarTheme: const AppBarTheme(
          color: Color(0xFF0B0D22),
        ),
        scaffoldBackgroundColor: Color(0xFF0B0D22),
      ),
    );
  }
}

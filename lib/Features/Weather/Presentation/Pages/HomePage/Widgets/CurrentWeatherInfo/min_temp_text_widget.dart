import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MinTempTextWidget extends StatelessWidget {
  final int minTemp;
  const MinTempTextWidget({super.key, required this.minTemp});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
    // Get current locale
    String locale = Intl.getCurrentLocale();

    // Format the number using the current locale
    String formattedMinTemperature =
        NumberFormat.decimalPattern(locale).format(minTemp);

    return Text(formattedMinTemperature, style: textStyle);
  }
}

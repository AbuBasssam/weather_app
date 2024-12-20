import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MaxTempTextWidget extends StatelessWidget {
  final int maxTemp;
  const MaxTempTextWidget({
    super.key,
    required this.maxTemp,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
    // Get current locale
    String locale = Intl.getCurrentLocale();

    // Format the number using the current locale
    String formattedMaxTemperature =
        NumberFormat.decimalPattern(locale).format(maxTemp);

    return Text(formattedMaxTemperature, style: textStyle);
  }
}

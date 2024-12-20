import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AverageTemperatureWidget extends StatelessWidget {
  final int averageTemprature;
  const AverageTemperatureWidget({super.key, required this.averageTemprature});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

    String currentLocale = Intl.getCurrentLocale();

    String formattedTemperature =
        NumberFormat.decimalPattern(currentLocale).format(averageTemprature);

    return Text('$formattedTemperature°', style: textStyle);
  }
}

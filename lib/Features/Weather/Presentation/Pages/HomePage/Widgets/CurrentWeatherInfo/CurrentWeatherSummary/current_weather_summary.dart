import 'package:flutter/material.dart';
import 'average_temperature_widget.dart';
import 'current_weather_condition_image.dart';

class CurrentWeatherSummary extends StatelessWidget {
  final String imagePath;
  final int averageTemp;

  const CurrentWeatherSummary({
    super.key,
    required this.imagePath,
    required this.averageTemp,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CurrentWeatherConditionImage(imagePath: imagePath),
        const SizedBox(width: 10), //space between image the average temp
        AverageTemperatureWidget(averageTemprature: averageTemp),
      ],
    );
  }
}

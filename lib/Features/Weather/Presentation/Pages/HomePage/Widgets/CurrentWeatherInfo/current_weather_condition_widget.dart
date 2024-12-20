import 'package:flutter/material.dart';

class CurrentWeatherConditionWidget extends StatelessWidget {
  final String condition;

  const CurrentWeatherConditionWidget({
    super.key,
    required this.condition,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      condition,
      style: _getTextStyle(),
    );
  }

  TextStyle _getTextStyle() {
    return const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
    );
  }
}

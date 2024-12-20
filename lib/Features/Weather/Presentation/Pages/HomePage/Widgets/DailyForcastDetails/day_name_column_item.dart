import 'package:flutter/material.dart';
import '../../../../../Domain/Entities/weather.dart';
import '../WeatherWidget/day_name.dart';

class DayNameColumnItem extends StatelessWidget {
  const DayNameColumnItem({
    super.key,
    required this.itemWidth,
    required this.weather,
    required this.index,
  });

  final double itemWidth;
  final Weather weather;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: itemWidth,
      child: DayName(date: weather.date, index: index),
    );
  }
}

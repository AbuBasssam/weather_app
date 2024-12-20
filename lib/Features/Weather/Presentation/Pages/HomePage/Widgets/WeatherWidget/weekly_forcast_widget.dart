import 'package:flutter/material.dart';
import '../../../../../Domain/Entities/weather.dart';
import '../DailyForcastDetails/daily_forcast_details.dart';

class WeeklyForcastWidget extends StatelessWidget {
  final Weather weather;
  const WeeklyForcastWidget({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(height: 2),
          itemCount: weather.weeklyForcast.length,
          itemBuilder: (context, index) {
            return DailyForcastDetails(
              weather: weather,
              index: index,
            );
          }),
    );
  }
}

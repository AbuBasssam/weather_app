import 'package:flutter/material.dart';
import '../../../../../Domain/Entities/weather.dart';
import '../CurrentWeatherInfo/current_weather_info.dart';
import 'weekly_forcast_widget.dart';

class WeatherWidget extends StatelessWidget {
  final Weather weather;

  const WeatherWidget({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    MaterialColor themeColor = weather.getThemeColor();
    return Container(
        decoration: BoxDecoration(gradient: _linearGradientTheme(themeColor)),
        child: Column(
          children: [
            CurrentWeatherInfo(weather: weather),
            WeeklyForcastWidget(weather: weather)
          ],
        ));
  }

  LinearGradient _linearGradientTheme(MaterialColor themeColor) {
    return LinearGradient(
      colors: [
        themeColor,
        themeColor[300]!,
        themeColor[100]!,
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
  }
}

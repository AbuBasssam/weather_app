import 'package:flutter/material.dart';
import '../../../../../Domain/Entities/weather.dart';
import 'CurrentWeatherSummary/current_weather_summary.dart';
import 'MinMaxTempratureWidget/min_max_temprature_widget.dart';
import 'city_name_widget.dart';
import 'current_weather_condition_widget.dart';
import 'last_updated_date_time_text.dart';

class CurrentWeatherInfo extends StatelessWidget {
  const CurrentWeatherInfo({
    super.key,
    required this.weather,
  });

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    int currentWeatherMinTemp = weather.weeklyForcast[0].minTemp.toInt();
    int currentWeatherMaxTemp = weather.weeklyForcast[0].maxTemp.toInt();
    int currentWeatherAverageTemp = weather.weeklyForcast[0].temp.toInt();
    String currentWeatherCondition = weather.weeklyForcast[0].weatherCondition;
    String currentWeatherImage = weather.weeklyForcast[0].image!;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LastUpdatedDateTimeText(dateTime: weather.date),
        CityNameWidget(name: weather.cityName),
        CurrentWeatherSummary(
          averageTemp: currentWeatherAverageTemp,
          imagePath: currentWeatherImage,
        ),
        MinMaxTempratureWidget(
            min: currentWeatherMinTemp, max: currentWeatherMaxTemp),
        CurrentWeatherConditionWidget(condition: currentWeatherCondition),
      ],
    );
  }
}

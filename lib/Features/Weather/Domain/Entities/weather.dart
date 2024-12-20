import 'package:flutter/material.dart';
import '../../../../generated/l10n.dart';
import '../../Infrastructure/Models/daily_forcast_detail.dart';

class Weather {
  final String cityName;
  final DateTime date;
  List<DailyForcastDetail> weeklyForcast;

  Weather(
      {required this.cityName,
      required this.date,
      required this.weeklyForcast});

  //getThemeColor2 method
  MaterialColor getThemeColor() {
    // Mapping weather conditions to colors
    Map<String, MaterialColor> weatherConditionColors = {
      S.current.Sunny: Colors.amber,
      S.current.Clear: Colors.blue,
      S.current.Partly_cloudy: Colors.lightBlue,
      S.current.Cloudy: Colors.grey,
      S.current.Overcast: Colors.blueGrey,
      S.current.Mist: Colors.teal,
      S.current.Patchy_rain_possible: Colors.lightBlue,
      S.current.Patchy_snow_possible: Colors.cyan,
      S.current.Patchy_rain_possible: Colors.blue,
      S.current.Patchy_freezing_drizzle_possible: Colors.indigo,
      S.current.Thundery_outbreaks_possible: Colors.deepPurple,
      S.current.Blowing_snow: Colors.grey,
      S.current.Blizzard: Colors.blueGrey,
      S.current.Fog: Colors.grey,
      S.current.Freezing_fog: Colors.indigo,
      S.current.Patchy_light_drizzle: Colors.lightBlue,
      S.current.Light_drizzle: Colors.lightBlue,
      S.current.Freezing_drizzle: Colors.indigo,
      S.current.Heavy_freezing_drizzle: Colors.indigo,
      S.current.Patchy_light_rain: Colors.blue,
      S.current.Light_rain: Colors.blue,
      S.current.Moderate_rain_at_times: Colors.blueGrey,
      S.current.Moderate_rain: Colors.blue,
      S.current.Heavy_rain_at_times: Colors.indigo,
      S.current.Heavy_rain: Colors.indigo,
      S.current.Light_freezing_rain: Colors.cyan,
      S.current.Moderate_or_heavy_freezing_rain: Colors.deepPurple,
      S.current.Light_sleet: Colors.blue,
      S.current.Moderate_or_heavy_sleet: Colors.blue,
      S.current.Patchy_light_snow: Colors.lightBlue,
      S.current.Light_snow: Colors.lightBlue,
      S.current.Patchy_moderate_snow: Colors.blue,
      S.current.Moderate_snow: Colors.cyan,
      S.current.Patchy_heavy_snow: Colors.blue,
      S.current.Heavy_snow: Colors.indigo,
      S.current.Ice_pellets: Colors.blue,
      S.current.Light_rain_shower: Colors.blue,
      S.current.Moderate_or_heavy_rain_shower: Colors.blueGrey,
      S.current.Torrential_rain_shower: Colors.indigo,
      S.current.Light_sleet_showers: Colors.blue,
      S.current.Moderate_or_heavy_sleet_showers: Colors.blue,
      S.current.Light_snow_showers: Colors.lightBlue,
      S.current.Moderate_or_heavy_snow_showers: Colors.cyan,
      S.current.Light_showers_of_ice_pellets: Colors.blue,
      S.current.Moderate_or_heavy_showers_of_ice_pellets: Colors.blue,
      S.current.Patchy_light_rain_with_thunder: Colors.deepPurple,
      S.current.Moderate_or_heavy_rain_with_thunder: Colors.deepPurple,
      S.current.Patchy_light_snow_with_thunder: Colors.cyan,
      S.current.Moderate_or_heavy_snow_with_thunder: Colors.indigo,
    };

    // Return the corresponding color or a default color if condition is not found
    return weatherConditionColors[weeklyForcast[0].weatherCondition] ??
        Colors.orange;
  }
}

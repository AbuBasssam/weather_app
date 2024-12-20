import '../../../../generated/l10n.dart';
import 'daily_forcast_detail.dart';

class WeatherModel {
  final String cityName;
  final DateTime date;
  List<DailyForcastDetail> weeklyForcast;

  WeatherModel({
    required this.cityName,
    required this.date,
    required this.weeklyForcast,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
        cityName: json['location']['name'],
        date: DateTime.parse(json['current']['last_updated']),
        weeklyForcast: _mapForecastToWeeklyDetails(json));
  }

  // Map forecast data to a fixed-length array
  static List<DailyForcastDetail> _mapForecastToWeeklyDetails(
      Map<String, dynamic> json) {
    final forecastDays = json['forecast']['forecastday'] as List;

    // return  a fixed-length list of Weekly Forcast Details
    return _fixedForecastArray(forecastDays);
  }

  static List<DailyForcastDetail> _fixedForecastArray(
      List<dynamic> forecastDays) {
    // Initialize a fixed-length list with default values
    final List<DailyForcastDetail> fixedArray =
        List.filled(7, DailyForcastDetail.empty(), growable: false);

    // Populate the array with data
    for (int i = 0; i < fixedArray.length; i++) {
      final day = forecastDays[i]['day'];
      fixedArray[i] = DailyForcastDetail(
        temp: day['avgtemp_c'],
        maxTemp: day['maxtemp_c'],
        minTemp: day['mintemp_c'],
        weatherCondition: day['condition']['text'].toString().trim(),
        image: _mapWeatherCondition(day['condition']['text'].toString().trim()),
      );
    }

    return fixedArray;
  }

  static String _mapWeatherCondition(String weatherCondition) {
    Map<String, String> weatherConditionImages = {
      S.current.Sunny: "assets/images/clear.png",
      S.current.Clear: "assets/images/clear.png",
      S.current.Partly_cloudy: "assets/images/cloudy.png",
      S.current.Cloudy: "assets/images/cloudy.png",
      S.current.Overcast: "assets/images/cloudy.png",
      S.current.Mist: "assets/images/mist.png",
      S.current.Patchy_rain_possible: "assets/images/rainy.png",
      S.current.Patchy_snow_possible: "assets/images/snow.png",
      S.current.Patchy_sleet_possible: "assets/images/sleet.png",
      S.current.Patchy_freezing_drizzle_possible:
          "assets/images/freezing-rain.png",
      S.current.Thundery_outbreaks_possible: "assets/images/thunderstorm.png",
      S.current.Blowing_snow: "assets/images/snow.png",
      S.current.Blizzard: "assets/images/blizzard.png",
      S.current.Fog: "assets/images/fog.png",
      S.current.Freezing_fog: "assets/images/freezing-fog.png",
      S.current.Patchy_light_drizzle: "assets/images/drizzle.png",
      S.current.Light_drizzle: "assets/images/drizzle.png",
      S.current.Freezing_drizzle: "assets/images/freezing-rain.png",
      S.current.Heavy_freezing_drizzle: "assets/images/freezing-rain.png",
      S.current.Patchy_light_rain: "assets/images/Light Rain with Thunder.png",
      S.current.Light_rain: "assets/images/rainy.png",
      S.current.Moderate_rain_at_times: "assets/images/rainy.png",
      S.current.Moderate_rain: "assets/images/rainy.png",
      S.current.Heavy_rain_at_times: "assets/images/heavy rain.png",
      S.current.Heavy_rain: "assets/images/heavy rain.png",
      S.current.Light_freezing_rain: "assets/images/freezing-rain.png",
      S.current.Moderate_or_heavy_freezing_rain:
          "assets/images/freezing-rain.png",
      S.current.Light_sleet: "assets/images/snow.png",
      S.current.Moderate_or_heavy_sleet: "assets/images/snow.png",
      S.current.Patchy_light_snow: "assets/images/snow.png",
      S.current.Light_snow: "assets/images/snow.png",
      S.current.Patchy_moderate_snow: "assets/images/heavy snow.png",
      S.current.Moderate_snow: "assets/images/heavy snow.png",
      S.current.Patchy_heavy_snow: "assets/images/sleet.png",
      S.current.Heavy_snow: "assets/images/sleet.png",
      S.current.Ice_pellets: "assets/images/ice-pellets.png",
      S.current.Light_rain_shower: "assets/images/rainy.png",
      S.current.Moderate_or_heavy_rain_shower: "assets/images/heavy rain.png",
      S.current.Torrential_rain_shower: "assets/images/heavy rain.png",
      S.current.Light_sleet_showers: "assets/images/heavy rain.png",
      S.current.Moderate_or_heavy_sleet_showers: "assets/images/heavy rain.png",
      S.current.Light_snow_showers: "assets/images/heavy snow.png",
      S.current.Moderate_or_heavy_snow_showers: "assets/images/heavy snow.png",
      S.current.Light_showers_of_ice_pellets: "assets/images/freezing-rain.png",
      S.current.Moderate_or_heavy_showers_of_ice_pellets:
          "assets/images/freezing-rain.png",
      S.current.Patchy_light_rain_with_thunder:
          "assets/images/thunderstorm.png",
      S.current.Moderate_or_heavy_rain_with_thunder:
          "assets/images/thunderstorm.png",
      S.current.Patchy_light_snow_with_thunder:
          "assets/images/thunderstorm.png",
      S.current.Moderate_or_heavy_snow_with_thunder:
          "assets/images/thunderstorm.png",
    };
    return weatherConditionImages[weatherCondition] ??
        "assets/images/clear.png";
  }
}

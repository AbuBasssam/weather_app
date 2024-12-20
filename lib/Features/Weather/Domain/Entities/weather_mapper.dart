import '../../Infrastructure/Models/daily_forcast_detail.dart';
import 'weather.dart';

class WeatherMapper {
  // Convert Weather object to a Map
  static Map<String, dynamic> weatherToJson(Weather weather) {
    return {
      'cityName': weather.cityName,
      'date': weather.date
          .toString(), //DateFormat('yyyy-MM-dd HH:mm', Intl.getCurrentLocale())
      //.format(weather.date),
      'weeklyForecast':
          weather.weeklyForcast.map(_weeklyForecastToJson).toList()
    };
  }

  //Helper method convert WeeklyForcastDetails object to a map
  static Map<String, dynamic> _weeklyForecastToJson(
      DailyForcastDetail details) {
    return {
      'image': details.image,
      'temp': details.temp,
      'minTemp': details.minTemp,
      'maxTemp': details.maxTemp,
      'weatherCondition': details.weatherCondition,
    };
  }

  // Convert Map to Weather object
  static Weather jsonToWeather(Map<String, dynamic> json) {
    return Weather(
      cityName: json['cityName'],
      date: DateTime.parse(json[
          'date']), //DateFormat('yyyy-MM-dd HH:mm', Intl.getCurrentLocale()).parse(json['date']),
      weeklyForcast: (json['weeklyForecast'] as List)
          .map((item) => _jsonToWeeklyForecast(item))
          .toList(),
    );
  }

  //Helper method  convert Map to WeeklyForcastDetails object
  static DailyForcastDetail _jsonToWeeklyForecast(Map<String, dynamic> json) {
    return DailyForcastDetail(
      image: json['image'],
      temp: json['temp'],
      minTemp: json['minTemp'],
      maxTemp: json['maxTemp'],
      weatherCondition: json['weatherCondition'],
    );
  }
}

// class WeatherMapper {
//   // Convert Weather object to a Map
//   static Map<String, dynamic> weatherToJson(Weather weather) {
//     return {
//       'cityName': weather.cityName,
//       'date': weather.date.toIso8601String(), // Save in ISO 8601 format
//       'weeklyForecast':
//           weather.weeklyForcast.map(_weeklyForecastToJson).toList(),
//     };
//   }

//   // Helper method to convert WeeklyForcastDetails object to a map
//   static Map<String, dynamic> _weeklyForecastToJson(
//       DailyForcastDetail details) {
//     return {
//       'image': details.image,
//       'temp': details.temp,
//       'minTemp': details.minTemp,
//       'maxTemp': details.maxTemp,
//       'weatherCondition': details.weatherCondition,
//     };
//   }

//   // Convert Map to Weather object
//   static Weather jsonToWeather(Map<String, dynamic> json) {
//     return Weather(
//       cityName: json['cityName'],
//       date: DateTime.parse(json['date']), // Parse ISO 8601 format
//       weeklyForcast: (json['weeklyForecast'] as List)
//           .map((item) => _jsonToWeeklyForecast(item))
//           .toList(),
//     );
//   }

//   // Helper method to convert Map to WeeklyForcastDetails object
//   static DailyForcastDetail _jsonToWeeklyForecast(Map<String, dynamic> json) {
//     return DailyForcastDetail(
//       image: json['image'],
//       temp: json['temp'],
//       minTemp: json['minTemp'],
//       maxTemp: json['maxTemp'],
//       weatherCondition: json['weatherCondition'],
//     );
//   }
// }

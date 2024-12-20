import '../../../../Core/error.dart';
import '../../../../Core/result.dart';
import '../../Domain/Abstracts/weather_local_data_source.dart';
import '../../Domain/Entities/weather.dart';
import '../../Domain/Entities/weather_mapper.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

const cachedWeather = "CACHED_WEATHER";

class WeatherLocalDataSource implements IWeatherLocalDataSource {
  final SharedPreferences sharedPreferences;

  WeatherLocalDataSource({required this.sharedPreferences});

  @override
  Future<Result<Weather>> cachWeatherDetails(Weather weather) {
    final jsonWeather = json.encode(WeatherMapper.weatherToJson(weather));

    sharedPreferences.setString(cachedWeather, jsonWeather);

    return Future.value(Result.success(null));
  }

  @override
  Future<Result<Weather>> getCachedDetails() {
    final jsonString = sharedPreferences.getString(cachedWeather);

    return _manageJsonString(jsonString);
  }

  Future<Result<Weather>> _manageJsonString(String? jsonString) {
    Result<Weather> result;
    if (jsonString != null) {
      // Decode JSON string to Map and then to WeatherModel
      var jsonData = json.decode(jsonString);

      Weather weather = WeatherMapper.jsonToWeather(jsonData);

      result = Result.success<Weather>(weather);

      return Future.value(result);
    }
    Error emptyCacheError = Error("100", "Cache is empty");
    result = Result.fail<Weather>([emptyCacheError]);

    return Future.value(result);
  }
}

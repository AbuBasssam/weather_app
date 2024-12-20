import 'package:weather_app/Features/Weather/Domain/Abstracts/weather_repository.dart';
import '../../../../Core/result.dart';
import '../Entities/weather.dart';

class WeatherUsecase {
  final IWeatherRepository repo;

  WeatherUsecase({required this.repo});

  Future<Result<Weather>> getWeeklyForcast({required String cityName}) async =>
      await repo.getWeeklyForcast(cityName: cityName);

  Future<Result<Weather>> getSavedWeeklyForcast() async =>
      await repo.getCachedWeatherForcast();
}

import '../../../../Core/result.dart';
import '../Entities/weather.dart';

abstract class IWeatherRepository {
  Future<Result<Weather>> getWeeklyForcast({required String cityName});
  Future<Result<Weather>> getCachedWeatherForcast();
}

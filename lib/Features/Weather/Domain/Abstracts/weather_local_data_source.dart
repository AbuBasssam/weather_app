import '../../../../Core/result.dart';
import '../Entities/weather.dart';

abstract class IWeatherLocalDataSource {
  Future<Result<Weather>> getCachedDetails();
  Future<Result<Weather>> cachWeatherDetails(Weather weather);
}

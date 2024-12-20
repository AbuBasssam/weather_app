import '../../../../Core/result.dart';
import '../Entities/weather.dart';

abstract class IWeatherRemoteDataSource {
  Future<Result<Weather>> getWeeklyForcast({required String cityName});
}
